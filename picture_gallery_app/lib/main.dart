import 'package:flutter/material.dart';
import 'screens/picture_capture_screen.dart';
import 'screens/picture_list_screen.dart';

void main() {
  runApp(PictureGalleryApp());
}

class PictureGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PictureListScreen(), // Initial screen to display picture list
    );
  }
}
