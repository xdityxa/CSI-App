import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/app_drawer.dart';

class SecondYearScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    // List<String> second_year_data = [
    //   {
    //     'name':
    //   }
    // ];

    // static String routeName = '/'
    return Scaffold(
      backgroundColor: Hexcolor('#E7F3FF'),
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: SingleChildScrollView(
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
                      icon: Icon(Icons.menu),
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
                            'Team',
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
                        width: 135,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Hexcolor('#79B6FC'), Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.5, 1.8],
                          ),
                        ),
                        child: Text(
                          'Second Year',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 500,
                    child: GridView.count(
                      // shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: List.generate(15, (index){
                        return Container(
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.amber,
                          ),
                          
                          height: 190,
                          width: 156,
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
