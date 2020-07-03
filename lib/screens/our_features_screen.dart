import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OurFeaturesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget _cards(String title1, String title2, String para) {
    return Container(
      height: 371,
      width: 285,
      decoration: BoxDecoration(
        color: Hexcolor('#E7F3FF'),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            // spreadRadius: 5,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 100,
        left: 30,
        bottom: 50,
      ),
      padding: EdgeInsets.only(
        top: 17,
        left: 23,
        right: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              title1,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 35,
                height: 1,
                fontWeight: FontWeight.w500
              ),
              // style: TextStyle(
              //   color: Colors.black,
              //   fontSize: 35,
              //   fontFamily: 'PlayfairDisplay',
              //   fontWeight: FontWeight.w500,

              // ),
            ),
          ),
          Container(
            child: Text(
              title2,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 26),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/we create bg.png'),
              ),
            ),
            child: Text(
              para,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 16,
                letterSpacing: 1.6,
                height: 1.4,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    // static String routeName = '/'
    return Scaffold(
      backgroundColor: Hexcolor('#E7F3FF'),
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              // height: mediaQuery.size.height * 0.28,
              decoration: BoxDecoration(
                color: Hexcolor('#E7F3FF'),
                image: DecorationImage(
                  image: AssetImage('assets/images/our feature page bg.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        height: 18,
                        width: 18,
                        // color: Colors.black,
                      ),
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                    ),
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // color: Colors.red,

                          margin: EdgeInsets.only(
                            left: mediaQuery.size.height * 0.02,
                          ),

                          child: Text(
                            'Our',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 45,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.blue,
                          margin: EdgeInsets.only(
                            left: mediaQuery.size.height * 0.02,
                          ),

                          child: Text(
                            'Features',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 45,
                              height: 1,
                              letterSpacing: 2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: mediaQuery.size.height * 0.05,
                bottom: mediaQuery.size.height * 0.069,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: 120,
                        color: Hexcolor('#79B6FC'),
                        // decoration: BoxDecoration(
                        //   gradient: LinearGradient(
                        //     colors: [Hexcolor('#79B6FC'), Colors.white],
                        //     begin: Alignment.topLeft,
                        //     end: Alignment.bottomRight,
                        //     stops: [0.5, 1.8],
                        //   ),
                        // ),
                        child: Text(
                          'Features',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        _cards('We', 'Create', 'We at CSI not only try, rather we do the things which helps us create something which is still an imagination for most, and we create those platforms which enables others to put out their innovative ideas and beliefs, to create a better world.'),
                        _cards('We', 'Share', 'We at CSI not only try, rather we do the things which helps us create something which is still an imagination for most, and we create those platforms which enables others to put out their innovative ideas and beliefs, to create a better world.'),
                        _cards('We', 'Innovate', 'We at CSI not only try, rather we do the things which helps us create something which is still an imagination for most, and we create those platforms which enables others to put out their innovative ideas and beliefs, to create a better world.'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: mediaQuery.size.height * 0.3,
            //   color: Colors.amber,
            // ),
          ],
        )),
      ),
    );
  }
}
