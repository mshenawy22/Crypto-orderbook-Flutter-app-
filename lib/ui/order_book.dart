import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'orderbook_row.dart';

class OrderBook extends StatelessWidget {
  const OrderBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return OrderBookRow (price: 100 , quantity: 1000,);

                  //   Container(
                  //   height: 50,
                  //   color: Colors.amber[colorCodes[index]],
                  //   child: Center(child: Text('Entry ${entries[index]}')),
                  // );
                }
            );

  }
}
