import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/components/deals.dart';
import 'package:shopper/components/tabScreen.dart';
import 'package:shopper/components/vogue.dart';
import 'package:shopper/providers/deals.dart';
import 'package:shopper/providers/vogue.dart';
import 'package:shopper/screens/dealScreen.dart';
import 'package:shopper/screens/menScreen.dart';
import 'package:shopper/screens/scripturesScreen.dart';
import 'package:shopper/screens/trendingScreen.dart';
import 'package:shopper/screens/unisexScreen.dart';
import 'package:shopper/screens/vogueScreen.dart';

import './constants.dart';
import 'providers/products.dart';
import 'screens/couplesScreen.dart';
import 'screens/products_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => Deals()),
        ChangeNotifierProvider(create: (context) => Vogues()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopper.io',
        theme: ThemeData(
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: veyronColorBlack),
          canvasColor: veyronColorBody,
          fontFamily: 'Raleway',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => TabsScreen(),
          ProductScreen.routeName: (ctx) => ProductScreen(),
          CouplesScreen.routeName: (ctx) => CouplesScreen(),
          DaelScreen.routeName: (ctx) => DaelScreen(),
          MenScreen.routeName: (ctx) => MenScreen(),
          ScripturesScreen.routeName: (ctx) => ScripturesScreen(),
          TrendingScreen.routeName: (ctx) => TrendingScreen(),
          UnisexScreen.routeName: (ctx) => UnisexScreen(),
          VogueScreen.routeName: (ctx) => VogueScreen(),
        },
      ),
    );
  }
}
