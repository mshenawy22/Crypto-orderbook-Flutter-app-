import 'dart:collection';
import 'dart:convert';


import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

 class KrakenSocketApi {
  static  WebSocketChannel _websocket  =WebSocketChannel.connect(
  Uri.parse('wss://futures.kraken.com/ws/v1'),
  );

  static List<KrakenFutureResponse> productQueue =   <KrakenFutureResponse>[];
  static List<KrakenFutureResponse> productListtoConsume =  [];
  static List<KrakenFutureResponse> _productListCache = [];
  static DateTime last_update = DateTime.now();

  final  BuildContext initialcontext;
   static late BuildContext staticContext;

  KrakenSocketApi(this.initialcontext)
  {
    staticContext = this.initialcontext;
    subscribeBTUSD();
    StartRealtimeQeue();

  }


  // Stream get socketStream => _websocket.stream ;
  // static Stream get socketStreamCore => _websocket.stream.asBroadcastStream();


  //   static Stream<KrakenFutureResponse> get socketStream =>  _websocket.stream
  //     .map<KrakenFutureResponse>(
  // (value) => KrakenFutureResponse.fromJson((jsonDecode(value))));
      // .skipWhile((element) => element.productId != 'PI_XBTUSD');

   get productList10Items => productQueue.toList();

    StartRealtimeQeue()
       async {

         // productListtoConsume.add(KrakenFutureResponse.fromJsonEmpty());
            
           _websocket.stream.asBroadcastStream().listen(
                   (element) =>
               {

           _productListCache.add(  KrakenFutureResponse.fromJson((jsonDecode(element)))),


           if (DateTime.now().difference(last_update)> Duration(seconds: 2) && _productListCache.length >10 )
           // if (_productListCache.length >10)
               {
           // _productListCache.map((e) => productListtoConsume[e])
           productListtoConsume = _productListCache.map((v) => v).toList(),
           productListtoConsume.sort((b, a) => a.qty.compareTo(b.qty)),
           BlocProvider.of<ProductListCubit>(staticContext).updateLiveQueue(),
                 _productListCache.clear(),

                 last_update = DateTime.now()

           }




         }
           );

  }


   RestartSocket()
  {
    closeSocket();
    subscribeBTUSD();

  }






    subscribeBTUSD() {

    _websocket.sink.add(
        '{"event":"subscribe","feed":"book","product_ids":["PI_XBTUSD"]}'
    );

  }

  void unSubscribeBTUSD() {

    _websocket.sink.add(
        '{"event":"unsubscribe","feed":"book","product_ids":["PI_XBTUSD"]}'
    );

  }

   void closeSocket() {
    _websocket.sink.close();
  }


}