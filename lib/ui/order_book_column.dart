import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    child: OrderBookRow(price: 100, quantity: 10 * index , buyRow :buyTable));

                //   Container(
                //   height: 50,
                //   color: Colors.amber[colorCodes[index]],
                //   child: Center(child: Text('Entry ${entries[index]}')),
                // );
              }))
    ]));
  }
}
