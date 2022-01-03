import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputOrderField extends StatelessWidget {
  const inputOrderField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10) ,
      decoration :  ShapeDecoration(
          color: Theme.of(context).canvasColor,
          shape:
          Border.all(width: 1.0, color: Theme.of(context).dividerColor)

      ),
      child:  TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color:Theme.of(context).dividerColor )),
          labelText: 'Quantity:',
        ),
      ),
    );
  }
}
