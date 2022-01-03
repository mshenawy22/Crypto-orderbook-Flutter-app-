import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orderbook_row.dart';

class OrderBookColumn extends StatelessWidget {
  const OrderBookColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

            return
        Container(
          child :  Expanded (
              child :   ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {

                    return
                      Container(
                          decoration :  ShapeDecoration(
                              color: Theme.of(context).canvasColor,
                              shape:

                              Border.all(width: 2.0, color: Theme.of(context).dividerColor)

                          ),
                          child :  OrderBookRow (price: 100 , quantity: 10*index)
                      );


                    //   Container(
                    //   height: 50,
                    //   color: Colors.amber[colorCodes[index]],
                    //   child: Center(child: Text('Entry ${entries[index]}')),
                    // );
                  }
              )
          )
        );





  }
}
