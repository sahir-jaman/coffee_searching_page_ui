import 'package:coffee_shop_ui/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffee Shop",
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
      home: HomePage(),
    );
  }
}
