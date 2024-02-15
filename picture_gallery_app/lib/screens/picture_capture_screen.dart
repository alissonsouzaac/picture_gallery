// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// class PictureCaptureScreen extends StatefulWidget {
//   @override
//   _PictureCaptureScreenState createState() => _PictureCaptureScreenState();
// }

// class _PictureCaptureScreenState extends State<PictureCaptureScreen> {
//   late CameraController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;

//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );

//     await _controller.initialize();
//     if (!mounted) {
//       return;
//     }
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_controller == null || !_controller.value.isInitialized) {
//       return Container();
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Capture Picture'),
//       ),
//       body: CameraPreview(_controller),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           try {
//             final XFile picture = await _controller.takePicture();
//             // Handle the picture, for example, navigate to a preview screen
//           } catch (e) {
//             print('Error taking picture: $e');
//           }
//         },
//         child: Icon(Icons.camera),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class PictureCaptureScreen extends StatefulWidget {
  @override
  _PictureCaptureScreenState createState() => _PictureCaptureScreenState();
}

class _PictureCaptureScreenState extends State<PictureCaptureScreen> {
  late CameraController _controller;
  late List<CameraDescription> _cameras;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _controller = CameraController(
      _cameras[0], // Select the first camera from the list
      ResolutionPreset.medium, // Choose a resolution preset
    );

    try {
      await _controller.initialize();
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Capture Picture'),
      ),
      body: CameraPreview(_controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final XFile picture = await _controller.takePicture();
            // Handle the picture, for example, navigate to a preview screen
          } catch (e) {
            print('Error taking picture: $e');
          }
        },
        child: Icon(Icons.camera),
      ),
    );
  }
}
