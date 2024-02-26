import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerButton extends StatelessWidget {
  final Function(ImageSource) onPressed;

  const ImagePickerButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => onPressed(ImageSource.camera),
          tooltip: 'Take a picture',
          child: Icon(Icons.camera_alt),
        ),
        SizedBox(width: 16),
        FloatingActionButton(
          onPressed: () => onPressed(ImageSource.gallery),
          tooltip: 'Select from gallery',
          child: Icon(Icons.photo_library),
        ),
      ],
    );
  }
}
