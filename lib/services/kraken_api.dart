import 'dart:convert';


import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class KrakenSocketApi {
  late final WebSocketChannel _websocket;


  KrakenSocketApi()
  {
      _websocket = WebSocketChannel.connect(
      Uri.parse('wss://futures.kraken.com/ws/v1'),
  );


}


 void debugWebsocketStream()
 {



 }


  // Stream get socketStream => _websocket.stream ;


  Stream<KrakenFutureResponse> get socketStream => _websocket.stream
      .map<KrakenFutureResponse>(
  (value) => KrakenFutureResponse.fromJson((jsonDecode(value))));
      // .skipWhile((element) => element.productId != 'PI_XBTUSD');




  void subscribeBTUSD() {

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