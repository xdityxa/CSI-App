import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 111, left: 33),
        width: 100,
        child: Column(
          children: <Widget>[
            // AppBar(
            //   title: Text('Hello John!'),
            //   automaticallyImplyLeading: false,
            // ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.payment),
              title: Text(
                'Our Features',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'Services',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'What we do',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'Our Team',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'Join Us',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
            SizedBox(height: 186),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text(
                'Website',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                // Navigator.of(context).pushReplacementNamed(Screen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
