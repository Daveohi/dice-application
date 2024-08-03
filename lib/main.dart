import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/dice_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
