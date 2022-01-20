import 'package:bloc/bloc.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:cryptowatch_orderbook/services/kraken_api.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {

  ProductListCubit() : super (ProductListState(productListBuySide:KrakenSocketApi.productListtoConsumeBuySide,
    productListSellSide: KrakenSocketApi.productListtoConsumeSellSide

  ));



  //To be invoked to update the order list every interval (currently 2 seconds)

 void updateLiveOrderBook()
  {

    emit(
        ProductListState(productListBuySide:List.from(KrakenSocketApi.productListtoConsumeBuySide) ,
        productListSellSide:  List.from (KrakenSocketApi.productListtoConsumeSellSide)
        )
    );

  }


}
