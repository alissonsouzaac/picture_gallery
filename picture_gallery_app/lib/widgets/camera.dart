// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class CameraWidget extends StatefulWidget {
//   @override
//   _CameraWidgetState createState() => _CameraWidgetState();
// }

// class _CameraWidgetState extends State<CameraWidget> {
//   late CameraController _controller;
//   late List<CameraDescription> _cameras;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     _cameras = await availableCameras();
//     _controller = CameraController(_cameras[0], ResolutionPreset.max);

//     try {
//       await _controller.initialize();
//       if (mounted) {
//         setState(() {});
//       }
//     } catch (e) {
//       print('Error initializing camera: $e');
//     }
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!_controller.value.isInitialized) {
//       return Center(
//         child: CircularProgressIndicator(),
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Camera Preview'),
//       ),
//       body: CameraPreview(_controller),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Add logic to capture image
//         },
//         child: Icon(Icons.camera),
//       ),
//     );
//   }
// }
