import 'package:cryptowatch_orderbook/models/api_response.dart';

const MockResponse1 = {
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704851,
    "price": 41174.5,
    "qty": 0.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704850,
    "price": 41127.0,
    "qty": 20850.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704849,
    "price": 41133.5,
    "qty": 0.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704848,
    "price": 41137.5,
    "qty": 10000.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704847,
    "price": 41144.0,
    "qty": 0.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704846,
    "price": 41148.0,
    "qty": 10000.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704845,
    "price": 41154.0,
    "qty": 0.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704844,
    "price": 41158.0,
    "qty": 9950.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704843,
    "price": 41164.5,
    "qty": 0.0,
    "timestamp": 1642719391701
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704842,
    "price": 41174.5,
    "qty": 10000.0,
    "timestamp": 1642719391696
  }
  ,
  {
    "feed": "book",
    "product_id": "PI_XBTUSD",
    "side": "buy",
    "seq": 111704841,
    "price": 41171.0,
    "qty": 0.0,
    "timestamp": 1642719391696
  }
};

const List<KrakenFutureResponse>  productListToConsumeMockedBuy1  =

[
  KrakenFutureResponse(40909.0 , 'book','PI_XBTUSD' , 'buy', 2399997.0  , 1642719818813, 111962534),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'buy', 2399997.0 , 1642719818906, 111962554),
  KrakenFutureResponse(40896.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719819226, 111962631),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719819809, 111962865),
  KrakenFutureResponse(40902.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719818512, 111962427),
  KrakenFutureResponse(40896.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719818557, 111962455),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719819508, 111962776),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719818879, 111962543),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719818879, 111962548),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'buy', 1999998.0 , 1642719819226, 111962626),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'buy', 1399998.0 , 1642719818813, 111962532),

];

const List<KrakenFutureResponse>  productListToConsumeMockedSell1  =
[
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'sell', 2399997.0  , 1642719818813, 111962534),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'sell', 2399997.0 , 1642719818906, 111962554),
  KrakenFutureResponse(40896.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719819226, 111962631),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719819809, 111962865),
  KrakenFutureResponse(40902.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719818512, 111962427),
  KrakenFutureResponse(40896.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719818557, 111962455),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719819508, 111962776),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719818879, 111962543),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719818879, 111962548),
  KrakenFutureResponse(40905.5 , 'book', 'PI_XBTUSD', 'sell', 1999998.0 , 1642719819226, 111962626),
  KrakenFutureResponse(40909.0 , 'book', 'PI_XBTUSD', 'sell', 1399998.0 , 1642719818813, 111962532),

];


const List<KrakenFutureResponse>  productListToConsumeMockedSell2  =
[
  KrakenFutureResponse(41909.0 , 'book', 'PI_XBTUSD', 'sell', 2399947.0  , 1642719813813, 111965004),
  KrakenFutureResponse(41905.5 , 'book', 'PI_XBTUSD', 'sell', 2399947.0 , 1642719818306, 111962500),
  KrakenFutureResponse(41896.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719819326, 111962500),
  KrakenFutureResponse(41909.0 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719819309, 111962500),
  KrakenFutureResponse(41902.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719818312, 111962500),
  KrakenFutureResponse(41896.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719818357, 111962500),
  KrakenFutureResponse(41905.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719819308, 111962500),
  KrakenFutureResponse(41909.0 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719818379, 111962500),
  KrakenFutureResponse(41905.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719818379, 111962500),
  KrakenFutureResponse(41905.5 , 'book', 'PI_XBTUSD', 'sell', 1999948.0 , 1642719819326, 111962500),
  KrakenFutureResponse(41909.0 , 'book', 'PI_XBTUSD', 'sell', 1399948.0 , 1642719818313, 111962500),

];




