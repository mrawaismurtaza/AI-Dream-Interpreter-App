import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.home, 
            color: Color(0xFF2836CD)
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ), 
          ListTile(
            leading: Icon(FontAwesomeIcons.user),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.cog),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

