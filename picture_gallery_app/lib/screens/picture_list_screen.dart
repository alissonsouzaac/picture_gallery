// lib/screens/picture_list_screen.dart

import 'package:flutter/material.dart';
import 'package:picture_gallery_app/components/Header.dart';
import 'package:picture_gallery_app/models/picture.dart';
import 'package:picture_gallery_app/widgets/picture_list_item.dart';

class PictureListScreen extends StatelessWidget {
  final List<Picture> pictures = []; // Add your list of pictures here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture List'),
      ),
      body: Column(
        children: [
          const Header(),
          ListView.builder(
            itemCount: pictures.length,
            itemBuilder: (context, index) {
              return PictureListItem(picture: pictures[index]);
            },
          ),
        ],
      ),
    );
  }
}
