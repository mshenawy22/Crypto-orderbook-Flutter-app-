import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'orderbook_row.dart';
import 'orderbook_row_titles.dart';

class OrderBookColumn extends StatelessWidget {
  const OrderBookColumn({Key? key, required this.buyTable}) : super(key: key);
  final bool buyTable;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Container(
          decoration: ShapeDecoration(
              color: Theme.of(context).canvasColor,
              shape: Border(
                top: BorderSide(
                    color: Theme.of(context).dividerColor, width: 2.0),
                bottom: BorderSide(
                    color: Theme.of(context).dividerColor, width: 2.0),
              )),
          child: OrderBookRowTitle(
            buyTable: buyTable,
          )),
      Expanded(
          child: BlocConsumer<ProductListCubit, ProductListState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state.productListBuySide.isNotEmpty &&
                    state.productListSellSide.isNotEmpty) {
                  return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: buyTable? state.productListBuySide.length :  state.productListSellSide.length ,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            decoration: ShapeDecoration(
                                color: Theme.of(context).canvasColor,
                                shape: Border.all(
                                    width: 2.0,
                                    color: Theme.of(context).dividerColor)),
                            child: OrderBookRow(
                                price: buyTable
                                    ? state.productListBuySide
                                        .elementAt(index)
                                        .price
                                    : state.productListSellSide
                                        .elementAt(index)
                                        .price,
                                quantity: buyTable
                                    ? state.productListBuySide
                                        .elementAt(index)
                                        .qty
                                    : state.productListSellSide
                                        .elementAt(index)
                                        .qty,
                                buyRow: buyTable));
                      });
                } else {
                  return
                    Center
                  (
                        child : Text('Loading...')
                    );
                }
              }))
    ]));
  }
}
