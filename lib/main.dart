import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 2',
      debugShowCheckedModeBanner: false,
      home: Home(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
