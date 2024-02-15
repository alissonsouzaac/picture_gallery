// // lib/widgets/hamburger_menu.dart

// import 'package:flutter/material.dart';

// class HamburgerMenu extends StatelessWidget {
//   final List<Widget> menuItems;
//   //final Function(int) onMenuItemClicked;

//   const HamburgerMenu({
//     required Key key,
//     required this.menuItems,
//     // required this.onMenuItemClicked,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView.builder(
//         itemCount: menuItems.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: menuItems[index],
//             // onTap: () {
//             //   onMenuItemClicked(index);
//             //   Navigator.pop(
//             //       context); // Close the drawer after selecting a menu item
//             // },
//           );
//         },
//       ),
//     );
//   }
// }
