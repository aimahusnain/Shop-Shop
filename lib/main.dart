import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';
import 'package:shop_shop/Items.dart';
import 'package:shop_shop/FastFood.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(primarySwatch: Colors.blue),
        //home: Items(),
        initialRoute: Items.id,
        routes: {
          Items.id: (context) => Items(),
          ScreenTwo.id: (context) => ScreenTwo(),
          Traditional.id: (context) => Traditional(),
        });
  }
}
