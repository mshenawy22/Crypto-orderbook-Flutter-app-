import 'package:cryptowatch_orderbook/cryptowatch_colours.dart';
import 'package:cryptowatch_orderbook/cubit/quantity_field_cubit/quantity_field_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputOrderField extends StatelessWidget {
  const InputOrderField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(15) ,
      decoration :  ShapeDecoration(
          color: Theme.of(context).canvasColor,
          shape:
          Border.all(width: 1.0, color: Theme.of(context).dividerColor)

      ),
      child:
      BlocConsumer<QuantityFieldCubit, QuantityFieldState>(
        listener: (context, state) {

        },
          builder: (context, state)
          {
           return TextField(
             controller :TextEditingController(text:state.value.toString()),
               keyboardType  : TextInputType.number,
              decoration: InputDecoration(
                  fillColor : CWCOLORC,
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide(color:Theme.of(context).dividerColor )),
                labelText: 'Quantity:',
              ),
            );

    })





    );
  }
}
