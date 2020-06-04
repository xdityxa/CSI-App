import 'package:flutter/material.dart';
import 'package:csi_app/card_icons_icons.dart';

class Individual extends StatelessWidget {
  final String name;
  // final String githubUrl;
  // final String linkedinUrl;
  // final String facebookUrl;
  final String imageUrl;

  const Individual(
    this.name,
    // @required this.githubUrl,
    // @required this.linkedinUrl,
    // @required this.facebookUrl,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return InkWell(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black26,
                    Colors.black87,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  // color: Colors.amber,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      height: 1
                    ),
                  ),
                ),
                Container(
                  // color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        iconSize: 18,
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        icon: Icon(
                          Cardicons.facebook_1,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 18,
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        icon: Icon(
                          Cardicons.github_sign,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        iconSize: 18,
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        icon: Icon(
                          Cardicons.linkedin,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        )

        
        

        );
  }
}
