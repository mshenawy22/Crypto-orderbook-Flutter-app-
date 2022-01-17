import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:cryptowatch_orderbook/services/kraken_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'orderbook_row.dart';
import 'orderbook_row_titles.dart';

class OrderBookColumn extends StatelessWidget {
  const OrderBookColumn({Key? key , required this.buyTable}) : super(key: key);
  final bool buyTable ;
  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Column(children: [
       Container(
          decoration: ShapeDecoration(
              color: Theme.of(context).canvasColor,
              // shape: Border.all(
              //     width: 2.0, color: Theme.of(context).dividerColor)),
          shape: Border(
            top: BorderSide(color:Theme.of(context).dividerColor , width: 2.0 ),
            bottom: BorderSide(color:Theme.of(context).dividerColor , width: 2.0 ),
                   )
          ),
          child: OrderBookRowTitle(
            buyTable: buyTable,
          )),
          Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: ShapeDecoration(
                        color: Theme.of(context).canvasColor,
                        shape: Border.all(
                            width: 2.0, color: Theme.of(context).dividerColor)),
                    child:
                        BlocConsumer<ProductListCubit, ProductListState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state.productList.isNotEmpty)
                          {
//                             1642373448597
//                   print (state.productList.first.timestamp);
//                             DateFormat formatter = DateFormat("dd MMMM yyyy");
//                             print (DateTime.tryParse('1642374117560'));
//                             return formatter.format(date);

                            return OrderBookRow(
                                price: state.productList.elementAt(index).price,
                                quantity: state.productList.elementAt(index).qty,
                                buyRow: buyTable);
                          }
                          else {
                            return OrderBookRow(
                                price: 0,
                                quantity: 0,
                                buyRow: buyTable);
                          }
                        }
                        )

                    // StreamBuilder <KrakenFutureResponse>(
                    //     stream :  KrakenSocketApi.socketStream.asBroadcastStream() ,
                    //     builder: (context,  snapshot)
                    //     {
                    //
                    //       if (snapshot.hasData)
                    //       {
                    //
                    //         return   OrderBookRow(price: snapshot.data!.price, quantity: 10.0 * index , buyRow :buyTable);
                    //       }
                    //       else {
                    //         return Text('No data yet');
                    //       }
                    //     }
                    //
                    // )
                );



                //   Container(
                //   height: 50,
                //   color: Colors.amber[colorCodes[index]],
                //   child: Center(child: Text('Entry ${entries[index]}')),
                // );
              }))
    ]));
  }
}
