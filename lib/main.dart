import 'package:flutter/material.dart';
import 'package:flutter_validator/src/pages/home_pages.dart';
import 'package:flutter_validator/src/pages/menu_lateral.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FormValidator',
        initialRoute: "Home",
        routes: <String, WidgetBuilder>{
          "Home": (BuildContext context) => HomePage(),
          // ignore: prefer_const_constructors
          "Menu": (BuildContext context) => MenuLateral(),
          //"Save": (BuildContext context) => SavePage(),
          //"List": (BuildContext context) => ListPage(),
        });
  }
}
