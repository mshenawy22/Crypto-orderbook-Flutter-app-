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
            )

          ],
          child:
          MaterialApp(
            title:'CryptoWatch OrderBook',
            theme: ThemeData(
              // Define the default brightness and colors.
              brightness: Brightness.dark,
              dividerColor: BLACKA,
              scaffoldBackgroundColor:  BLACKB,
              canvasColor: BLACKD,
              primaryTextTheme: const TextTheme(
                headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
                headline4: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
                bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('CryptoWatch BTCUSD OrderBook '),
      ),
      body:MainAppScreen ()

    );
  }
}
