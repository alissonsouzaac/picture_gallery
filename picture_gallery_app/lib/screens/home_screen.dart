import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:picture_gallery_app/components/app_bar.dart';
import 'package:picture_gallery_app/components/imager_picker_button.dart';
import 'package:picture_gallery_app/components/sections/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _imageFile;

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery, maxWidth: 20, maxHeight: 20);

    if (pickedFile != null) {
      print('chegou aqui');
      print(pickedFile.path);
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Header(),
          Center(
            child: _imageFile == null
                ? Text('No image selected.')
                : Image.file(_imageFile!),
          ),
        ],
      ),
      floatingActionButton: ImagePickerButton(onPressed: _getImage),
    );
  }
}
