import 'package:flutter/material.dart';
import 'package:picture_gallery_app/screens/home_screen.dart';
import 'package:picture_gallery_app/themes/my_theme_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo',
      theme: MyTheme,
      home: HomeScreen(),
    );
  }
}
