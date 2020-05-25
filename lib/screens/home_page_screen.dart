import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        // title: Text('Home'),
        backgroundColor: Hexcolor('#E7F3FF'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Hexcolor('#E7F3FF'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 20, left: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      letterSpacing: 2),
                ),
              ),
              Container(
                height: 627,
                color: Colors.white,
                width: 500,
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 40,
                      ),
                      height: 50,
                      width: 136,
                      child: Text(
                        'Who we are',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Hexcolor('#79B6FC'),
                    ),
                    Text(
                      'Team CSI',
                      style: TextStyle(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30,),
                      width: 320,
                      child: Text(
                        'The COMPUTER SOCIETY OF INDIA (acronym as CSI) was formed in the year 1965. Since its inception, CSI has been paving the way for the IT industry to advance in the right direction. By indulging within itself most famous IT leaders, brilliant scientists and dedicated academicians.',
                        style: TextStyle(),
                        
                      ),
                    ),
                    RaisedButton(
                      child: Text('Know More'),
                      color: Hexcolor('#79B6FC'),
                      onPressed: (){
                        //...
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
