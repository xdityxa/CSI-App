import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Container(
        width: mediaQuery.size.width * 0.75,
        
        child: Drawer(
          elevation: 5,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/drawer bg.png'),
                  
                ),
                color: Hexcolor('#E3F0FC'),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.clear,
                      color: Hexcolor('#2D2871'),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                       Navigator.pushNamed(context, 'home');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.group_work,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Our Features',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'our_features');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.extension,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                    trailing: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Hexcolor('#2D2871'),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.dns,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'What we do',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                    trailing: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Hexcolor('#2D2871'),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.group,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Our Team',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                    trailing: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Hexcolor('#2D2871'),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.queue,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Join Us',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.live_help,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Hexcolor('#2D2871'),
                    ),
                    title: Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: mediaQuery.size.height * 0.30),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: ListTile(
                      leading: Icon(
                        Icons.web,
                        color: Hexcolor('#2D2871'),
                      ),
                      title: Text(
                        'Website',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Icon(
                        Icons.launch,
                        color: Hexcolor('#2D2871'),
                      ),
                      onTap: () {
                        // Navigator.of(context).pushReplacementNamed(Screen.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}