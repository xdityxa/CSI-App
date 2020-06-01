import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

import './screens/home_page_screen.dart';
import './screens/our_features_screen.dart';
import './screens/second_year_screen.dart';


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
      home: SecondYearScreen(),

      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => HomeScreen(),
      //   'our_features': (context) => OurFeaturesScreen(),
      //   'second_year': (context) => SecondYearScreen(),
      // },
    );
  }
}

