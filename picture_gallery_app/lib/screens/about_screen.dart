// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:picture_gallery_app/components/main_drawler.dart';
import 'package:picture_gallery_app/widgets/hamburguer_menu.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: HamburgerMenu(
          // key: UniqueKey(),
          // menuItems: [
          //   ListTile(
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, '/');
          //     },
          //     leading: Icon(Icons.home),
          //     title: Text('Home'),
          //   ),
          //   ListTile(
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, '/about');
          //     },
          //     leading: Icon(Icons.photo),
          //     title: Text('About'),
          //   ),
          // ],
          // onMenuItemClicked: (int index) {
          //   // Handle menu item clicks here
          //   switch (index) {
          //     case 0:
          //       Navigator.pushReplacementNamed(context, '/');
          //       break;
          //     case 1:
          //       Navigator.pushReplacementNamed(context, '/capture');
          //       break;
          //     case 3:
          //       Navigator.pushReplacementNamed(context, '/about');
          //       break;
          //   }
          // },
          ),
      body: Center(
        child: Text('About Screen'),
      ),
    );
  }
}
