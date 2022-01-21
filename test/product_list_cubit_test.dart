import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:cryptowatch_orderbook/services/kraken_api.dart';
import 'package:test/test.dart';
import 'api_mock_response.dart';




void main() {

  group('kraken api', () {
    // KrakenSocketApi(context);
    late ProductListCubit prodListBloc;
    Stream<KrakenFutureResponse> mockStream(int upperBound) async*{
      for(var r in MockResponse1){
        yield KrakenFutureResponse.fromJson(r);
        await Future.delayed(Duration(milliseconds: 10));
      }
    }
    setUp(() {
      prodListBloc = ProductListCubit();
    });


    test('Order ook buy side', ()
    {
      KrakenSocketApi.productListtoConsumeSellSide =productListToConsumeMockedSell1;
      KrakenSocketApi.productListtoConsumeBuySide = productListToConsumeMockedBuy1;
      prodListBloc.updateLiveOrderBook();

      expect(prodListBloc.state.productListBuySide, productListToConsumeMockedBuy1);
    });

    test('Order book sell side', ()
    {
      KrakenSocketApi.productListtoConsumeSellSide =productListToConsumeMockedSell1;
      KrakenSocketApi.productListtoConsumeBuySide = productListToConsumeMockedBuy1;
      prodListBloc.updateLiveOrderBook();

      expect(prodListBloc.state.productListSellSide, productListToConsumeMockedSell1);
    });


    //The next two tests to be executed in order :

    test('Testing Cubit before emitting updateLiveOrder event', () {
      KrakenSocketApi.productListtoConsumeSellSide =productListToConsumeMockedSell2 ;
      // Commented it out on purpose prodListBloc.updateLiveOrderBook();
      expect(prodListBloc.state.productListSellSide, productListToConsumeMockedSell1);
    });

    test('Testing Cubit  after updateLiveOrder event', () {

      prodListBloc.updateLiveOrderBook();
      expect(prodListBloc.state.productListSellSide, productListToConsumeMockedSell2);
    });





  });
  


}