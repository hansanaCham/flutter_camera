import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/pages/camera_page.dart';

void main() async {
  List<CameraDescription> _cameras = <CameraDescription>[];
  try {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
  } on CameraException catch (e) {
    // _logError(e.code, e.description);
  }
  runApp(CameraPage(
    cameras: _cameras,
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Camera")),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
