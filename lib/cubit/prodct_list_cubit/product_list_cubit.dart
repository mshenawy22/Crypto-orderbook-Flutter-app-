import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:cryptowatch_orderbook/services/kraken_api.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  //on initialisation , go to the loading state (loaded = false)
  ProductListCubit() : super (ProductListState(productList:KrakenSocketApi.productListtoConsume));

 void updateLiveQueue()
  {
    // print (KrakenSocketApi.productListtoConsume.last.price);
    emit(
        ProductListState(productList:List.from(KrakenSocketApi.productListtoConsume) )
    );

  }
  // void buildLiveQueue () async {
  //
  //   try {
  //     print (KrakenSocketApi.productlist.length);
  //     emit(ProductListState(productQueue:KrakenSocketApi.productQueue));
  //
  //   } catch (e)
  //   {
  //     print (e);
  //   }
  //
  //
  // }

}
