part of 'product_list_cubit.dart' ;


class ProductListState  extends Equatable{

    // Buy orderbook list to be consumed by the UI
   final List<KrakenFutureResponse> productListBuySide ;
   // Sell orderbook list to be consumed by the UI
   final List<KrakenFutureResponse> productListSellSide ;

  ProductListState( { required this.productListBuySide , required this.productListSellSide});

  @override
  // TODO: implement props
  List<Object?> get props => [productListBuySide , productListSellSide];
}
