part of 'product_list_cubit.dart' ;

class ProductListState {

    // Buy orderbook list to be consumed by the UI
   List<KrakenFutureResponse> productListBuySide ;
   // Sell orderbook list to be consumed by the UI
   List<KrakenFutureResponse> productListSellSide ;

  ProductListState( { required this.productListBuySide , required this.productListSellSide});
}
