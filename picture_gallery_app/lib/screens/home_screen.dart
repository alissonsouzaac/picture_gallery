// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:picture_gallery_app/components/app_bar.dart';
import 'package:picture_gallery_app/components/main_drawler.dart';
import 'package:picture_gallery_app/widgets/hamburguer_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const CustomAppBar(title: 'Picture Gallery'),
      drawer: HamburgerMenu(),
      // drawer: HamburgerMenu(
      //   key: UniqueKey(),
      //   menuItems: [
      //     ListTile(
      //       onTap: () {
      //         Navigator.pushReplacementNamed(context, '/');
      //       },
      //       leading: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     ListTile(
      //       onTap: () {
      //         Navigator.pushReplacementNamed(context, '/about');
      //       },
      //       leading: Icon(Icons.photo),
      //       title: Text('About'),
      //     ),
      //     ListTile(
      //       onTap: () {},
      //       leading: Icon(Icons.photo),
      //       title: Text('Capture'),
      //     ),
      //   ],
      //   // onMenuItemClicked: (int index) {
      //   //   // Handle menu item clicks here
      //   //   switch (index) {
      //   //     case 0:
      //   //       Navigator.pushReplacementNamed(context, '/');
      //   //       break;
      //   //     case 1:
      //   //       Navigator.pushReplacementNamed(context, '/capture');
      //   //       break;
      //   //     case 2:
      //   //       Navigator.pushReplacementNamed(context, '/about');
      //   //       break;
      //   //   }
      //   // },
      // ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
