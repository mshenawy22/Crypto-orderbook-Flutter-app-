import 'package:cryptowatch_orderbook/ui/quantity_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_book.dart';
import 'order_book_column.dart';



class MainAppScreen extends StatelessWidget {

  const MainAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
         Container( height: 20,),
        inputOrderField(),
        Container( height: 20,),
        Expanded(child: OrderBook())


      ],

    );





  }
}
