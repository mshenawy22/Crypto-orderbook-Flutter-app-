import 'package:cryptowatch_orderbook/services/kraken_api.dart';
import 'package:cryptowatch_orderbook/ui/quantity_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'order_book.dart';


class MainAppScreen extends StatefulWidget {
  const MainAppScreen({Key? key}) : super(key: key);

  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {

  @override
  void initState() {

    super.initState();
    //Initialize KrakenSocket Api class
    KrakenSocketApi(context);
  }
  @override
  void dispose() {
    KrakenSocketApi.closeSocket();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container( height: 20,),
        InputOrderField(),
        Container( height: 20,),
        Expanded(child: OrderBook()),
      ],

    );





  }
}
