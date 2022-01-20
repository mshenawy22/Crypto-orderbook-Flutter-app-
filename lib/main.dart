import 'package:cryptowatch_orderbook/cubit/quantity_field_cubit/quantity_field_cubit.dart';
import 'package:cryptowatch_orderbook/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cryptowatch_colours.dart';
import 'cubit/prodct_list_cubit/product_list_cubit.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
          providers: [
            BlocProvider<ProductListCubit>(
              create: (context) => ProductListCubit(),
            ),

            BlocProvider<QuantityFieldCubit>(
              create: (context) => QuantityFieldCubit(),
            )

          ],
          child:
          MaterialApp(
            title:'CryptoWatch OrderBook',
            theme: ThemeData(
              // Define the default brightness and colors.
              primaryColor:CWCOLORB ,
              brightness: Brightness.dark,
              dividerColor: CWCOLORA,
              scaffoldBackgroundColor:  CWCOLORB,
              canvasColor: CWCOLORD,
              primaryTextTheme: const TextTheme(
                headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                headline4: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
                bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
                  subtitle1 :TextStyle(color : CWCOLORE ,decoration :TextDecoration.underline  , decorationStyle : TextDecorationStyle.dotted ,decorationThickness: 3 )
              ),

              // Define the default font family.
              fontFamily: 'Georgia',
              visualDensity: VisualDensity.adaptivePlatformDensity,
                appBarTheme : AppBarTheme(titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              // Define the default `TextTheme`. Use this to specify the default
              // text styling for headlines, titles, bodies of text, and more.

            ),

            home:
            MyHomePage(title: 'CryptoWatch OrderBook'),
          )
      );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('CryptoWatch BTCUSD OrderBook '),
      ),
      body:MainAppScreen ()

    );
  }
}
