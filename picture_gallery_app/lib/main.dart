import 'package:flutter/material.dart';
import 'package:picture_gallery_app/screens/about_screen.dart';
import 'package:picture_gallery_app/screens/home_screen.dart';
import 'screens/picture_capture_screen.dart';
import 'screens/picture_list_screen.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize cameras
    final cameras = await availableCameras();
    // _cameras = cameras; // Save the cameras for later use
  } catch (e) {
    print('Error initializing cameras: $e');
    // Handle error gracefully
  }

  //_cameras = await availableCameras();
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
      //home: PictureListScreen(), // Initial screen to display picture list
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/capture': (context) => PictureCaptureScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
