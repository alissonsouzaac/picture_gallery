// lib/widgets/picture_list_item.dart

import 'dart:io'; // Import this line to use the File class
import 'package:flutter/material.dart';
import 'package:picture_gallery_app/models/picture.dart';

class PictureListItem extends StatelessWidget {
  final Picture picture;

  const PictureListItem({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.file(
          File(picture
              .imagePath), // Assuming imagePath is the path to the image file
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text('Picture'),
        onTap: () {
          // Implement onTap functionality if needed
        },
      ),
    );
  }
}
