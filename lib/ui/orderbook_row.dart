import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const colourQtyIndex = 100000;

class OrderBookRow extends StatelessWidget {
  const OrderBookRow({Key? key , required this.price ,  required this.quantity}) : super(key: key);
  final int price;
  final int quantity ;




  @override
  Widget build(BuildContext context) {
    return Stack(
      children :[
        Container (
          width:quantity/ colourQtyIndex ,
          color: Colors.green ,
                    ),
          Container (
          color: Colors.black87 ,

             child :  Text("${this.quantity}  ${this.price} " , style: TextStyle(color: Colors.white),),



             )

      ]

    );


  }
}
