import 'package:cryptowatch_orderbook/cubit/prodct_list_cubit/product_list_cubit.dart';
import 'package:cryptowatch_orderbook/models/api_response.dart';
import 'package:cryptowatch_orderbook/services/kraken_api.dart';
import 'package:cryptowatch_orderbook/ui/quantity_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_book.dart';
import 'order_book_column.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({Key? key}) : super(key: key);

  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {

  @override
  void initState() {

    super.initState();
    KrakenSocketApi(context);
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container( height: 20,),
        inputOrderField(),
        Container( height: 20,),
        Expanded(child: OrderBook()),
      ],

    );





  }
}
