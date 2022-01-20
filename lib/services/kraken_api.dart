import 'dart:convert';
import 'package:cryptowatch_orderbook/config/config.dart';
import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class KrakenSocketApi {
  // initialize our websocket variable with connecting it kraken api
  static final WebSocketChannel _websocket = WebSocketChannel.connect(
    Uri.parse(API_ENDPOINT),
  );
  // static lists to be feeded to the Product lists cubit and consumed by the UI
  static List<KrakenFutureResponse> productListtoConsumeBuySide = [];
  static List<KrakenFutureResponse> productListtoConsumeSellSide = [];
  // static cache lists to be used a channel between the live stream and the cousmable lists
  static final List<KrakenFutureResponse> _productListCache = [];
  // will be used later to time the refresh of our live data
  static DateTime lastUpdate = DateTime.now();

  //Buildcontext of the caller
  final BuildContext initialContext;


  static late BuildContext staticContext;

  KrakenSocketApi(this.initialContext) {
    staticContext = initialContext;
    //send the product subscription msg to the stream
    subscribeBTUSD();
    // Main function that listens and manipulates the stream and create our order book lists lists
    startRealtimeQeue();
  }

  // Main function that listens and manipulates the stream and create our order book lists lists
  startRealtimeQeue() async {

    //listen to the broadcast stream
    _websocket.stream.asBroadcastStream().listen((element) => {
          _productListCache
              .add(KrakenFutureResponse.fromJson((jsonDecode(element)))),

          // update the live data every 2 seconds and have at least 10 entries
          if (DateTime.now().difference(lastUpdate) > Duration(seconds: REFRESH_RATE_SEC) &&
              _productListCache.length > 10)
            {
              //clear the consumable product list for the buy and the sell orders
              productListtoConsumeBuySide.clear(),
              productListtoConsumeSellSide.clear(),
              //map the stream list to buy list
              productListtoConsumeBuySide = _productListCache
                  .where((element) => element.side == 'buy')
                  .map((v) => v)
                  .toList(),
              //map the stream list to sell list
              productListtoConsumeSellSide = _productListCache
                  .where((element) => element.side == 'sell')
                  .map((v) => v)
                  .toList(),

              //sort in a descending order
              productListtoConsumeBuySide
                  .sort((b, a) => a.qty.compareTo(b.qty)),
              productListtoConsumeSellSide
                  .sort((b, a) => a.qty.compareTo(b.qty)),

              //update the qubit so it refreshes the UI
              BlocProvider.of<ProductListCubit>(staticContext)
                  .updateLiveOrderBook(),
              _productListCache.clear(),

              lastUpdate = DateTime.now()
            }
        });
  }

  // Restart socket
  static restartSocket() {
    closeSocket();
    subscribeBTUSD();
  }


  //send a subscribe msg to the stream
 static  subscribeBTUSD() {
    _websocket.sink
        .add('{"event":"subscribe","feed":"book","product_ids":["PI_XBTUSD"]}');
  }

  //send unsubscribe msg to the stream
  void unSubscribeBTUSD() {
    _websocket.sink.add(
        '{"event":"unsubscribe","feed":"book","product_ids":["PI_XBTUSD"]}');
  }

  static  closeSocket() {
    _websocket.sink.close();
  }

}
