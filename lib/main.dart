import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './screens/home_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSI',
      theme: ThemeData(
        
      ),
      home: HomePage(),
    );
  }
}

