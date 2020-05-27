import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(MdiIcons.menu),
          onPressed: null,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: mediaQuery.size.height,
            width: double.infinity,
            color: Hexcolor('#E7F3FF'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: (mediaQuery.size.height) * 0.3,
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/home_page_bg.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
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
                  height: (mediaQuery.size.height) * 0.7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(32),
                            bottomRight: Radius.circular(32),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            width: 136,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Hexcolor('#79B6FC'), Colors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.3, 1.8],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                              child: Text(
                                'Who we are',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 30,
                          top: 15,
                          bottom: 30,
                        ),
                        child: Text(
                          'Team CSI',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 30,
                        ),
                        width: mediaQuery.size.width * 0.7,
                        child: Text(
                          'The COMPUTER SOCIETY OF INDIA (acronym as CSI) was formed in the year 1965. Since its inception, CSI has been paving the way for the IT industry to advance in the right direction. By indulging within itself most famous IT leaders, brilliant scientists and dedicated academicians.',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 60),
                        child: RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 15,
                            ),
                            child: Text(
                              'Know More',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          elevation: 5,
                          color: Hexcolor('#79B6FC'),
                          onPressed: () {
                            _scaffoldKey.currentState.openDrawer();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
