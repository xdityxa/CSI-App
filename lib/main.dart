import 'package:flutter/material.dart';

import './screens/home_page_screen.dart';
import './screens/our_features_screen.dart';
import './screens/second_year_screen.dart';
import './screens/third_year_screen.dart';
import './screens/fourth_year_screen.dart';
import './screens/contact_us_screen.dart';




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
      home: ContactUs(),

      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'our_features': (context) => OurFeaturesScreen(),
        'second_year': (context) => SecondYearScreen(),
        'third_year': (context) => ThirdYearScreen(),
        'fourth_year': (context) => FourthYearScreen(),
      },
    );
  }
}

