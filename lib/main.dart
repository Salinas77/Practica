import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica cinco',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: HomeWidget(title: 'Practica cinco'),
    );
  }
}

