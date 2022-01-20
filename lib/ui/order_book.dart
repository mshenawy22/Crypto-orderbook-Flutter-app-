import 'package:flutter/material.dart';

import 'order_book_column.dart';

class OrderBook extends StatelessWidget {
  const OrderBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return
      Container(
          decoration :  ShapeDecoration(
              color: Theme.of(context).canvasColor,
              shape:

              Border.all(width: 2.0, color: Theme.of(context).dividerColor)

          ),
         child :
         Column(
           children: [
           Expanded(
             child: Row(
               children:
               const [
                 OrderBookColumn(buyTable: true),
                 OrderBookColumn(buyTable: false),

               ]

           ),

           )

           ],

         )

      );


    //
  }
}
