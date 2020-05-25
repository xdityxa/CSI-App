import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 43,
              left: 0
            ),
            padding: EdgeInsets.zero,
            alignment: Alignment.centerLeft,
            child: IconButton(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
              icon: Icon(
                Icons.clear,
                size: 20,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(height:45), 
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
              ),
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
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {},
            ),
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
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {},
            ),
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
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {},
            ),
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
    );
  }
}
