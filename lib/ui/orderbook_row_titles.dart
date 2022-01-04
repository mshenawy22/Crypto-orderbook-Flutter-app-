import 'package:cryptowatch_orderbook/cubit/quantity_field_cubit/quantity_field_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cryptowatch_colours.dart';


class OrderBookRowTitle extends StatelessWidget {
  const OrderBookRowTitle({Key? key,required this.buyTable })
      : super(key: key);
  final bool buyTable ;



  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: BlocConsumer<QuantityFieldCubit, QuantityFieldState>(
            listener: (context, state) {},
            builder: (context, state) {
              return GestureDetector(
                  child: Stack(
                      children: [
                        buyTable?
                    ListTile(
                        title: Text("TOTAL", style : TextStyle(decoration :TextDecoration.underline  , decorationStyle : TextDecorationStyle.dotted )),
                        // leading: Icon(FontAwesomeIcons.medal, color: RED),
                        trailing: Text("PRICE" , style : TextStyle(decoration :TextDecoration.underline  , decorationStyle : TextDecorationStyle.dotted ) ))
                      :
                        ListTile(
                            title: Text("PRICE" , style : TextStyle(decoration :TextDecoration.underline  , decorationStyle : TextDecorationStyle.dotted )),
                            // leading: Icon(FontAwesomeIcons.medal, color: RED),
                            trailing: Text("TOTAL",style : TextStyle(decoration :TextDecoration.underline  , decorationStyle : TextDecorationStyle.dotted )))
                  ]));
            }));
  }
}
