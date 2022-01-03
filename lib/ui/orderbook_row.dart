import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cryptowatch_colours.dart';

const colourQtyIndex = 100000;

class OrderBookRow extends StatelessWidget {
  const OrderBookRow({Key? key , required this.price ,  required this.quantity}) : super(key: key);
  final int price;
  final int quantity ;


  @override
  Widget build(BuildContext context) {
    return
      Container (
        height : 50,
        child :  Stack(
            children :[

              Align(
                alignment: Alignment.centerRight,
                child: Container (
                  // width:100000*quantity/ colourQtyIndex ,
                  width:quantity *1000 /MediaQuery.of(context).size.width  ,
                  // width:100 ,
                  height: 60,
                  color: GREENB,
                ),
              ),


              ListTile(
                title:Text("${this.quantity}"),
                // leading: Icon(FontAwesomeIcons.medal, color: RED),
                trailing:  Text ( "${this.price}")
                )

            ]

        )
      );



  }
}
