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
                // alignment: Alignment.topLeft,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 40),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Container(
                        alignment: Alignment.center,
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
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Team CSI',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                      ),
                      width: 330,
                      child: Text(
                        'The COMPUTER SOCIETY OF INDIA (acronym as CSI) was formed in the year 1965. Since its inception, CSI has been paving the way for the IT industry to advance in the right direction. By indulging within itself most famous IT leaders, brilliant scientists and dedicated academicians.',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),

                    Container(
                      margin: EdgeInsets.only(left: 30),                      child: RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 15,
                          ),
                          child: Text(
                            'Know More',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        elevation: 5,
                        color: Hexcolor('#79B6FC'),
                        onPressed: () {
                          //...
                        },
                      ),
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
