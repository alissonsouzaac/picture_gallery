import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20, // Adjust the font size as needed
          fontWeight: FontWeight.bold, // Make the title bold
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(
            Icons.account_circle,
            size: 32,
          ),
        )
      ],
      centerTitle: true,
    );
  }
}
