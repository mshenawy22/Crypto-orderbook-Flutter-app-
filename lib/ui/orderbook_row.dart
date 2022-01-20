import 'package:cryptowatch_orderbook/cubit/quantity_field_cubit/quantity_field_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cryptowatch_colours.dart';
import 'package:intl/intl.dart';

const colourQtyIndex = 100000;

class OrderBookRow extends StatelessWidget {
  const OrderBookRow({Key? key, required this.price, required this.quantity , required this.buyRow})
      : super(key: key);
  final double price;
  final double quantity;
  final bool buyRow ;

  @override
  Widget build(BuildContext context) {
    var formatCurrency = NumberFormat.simpleCurrency (name : '',decimalDigits: 2);
    var formatQuantity  = NumberFormat.simpleCurrency (name : '',decimalDigits: 0);

    return Container(
        height: 50,
        child: BlocConsumer<QuantityFieldCubit, QuantityFieldState>(
            listener: (context, state) {},
            builder: (context, state) {

              return GestureDetector(
                  child: Stack(children: [
                    Align(
                      alignment: this.buyRow?
                      Alignment.centerRight:
                      Alignment.centerLeft,

                      child:
                      this.buyRow?
                      Container(
                        // width:100000*quantity/ colourQtyIndex ,
                        width:
                            quantity /10 / MediaQuery.of(context).size.width,
                        // width:100 ,
                        height: 60,
                        color: GREENB,
                      ):
                      Container(
                        // width:100000*quantity/ colourQtyIndex ,
                        width:
                        quantity /10 / MediaQuery.of(context).size.width,
                        // width:100 ,
                        height: 60,
                        color: REDB,
                      ),
                    ),
                    this.buyRow?
                    ListTile(
                        title: Text("${this.quantity}",),
                        trailing: Text("${formatCurrency.format(price)}",style: Theme.of(context).primaryTextTheme.bodyText1?.copyWith(color: GREENA)) ):
                    ListTile(
                        title: Text("${formatCurrency.format(price)}",style: Theme.of(context).primaryTextTheme.bodyText1?.copyWith(color: REDA)),
                        trailing: Text("${formatQuantity.format(quantity)}"))
                  ]),
                  onTap: () => context
                      .read<QuantityFieldCubit>()
                      .updateValue(this.quantity));
            }));
  }
}
