import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';
import 'dart:typed_data';

class NativeCameraApp extends StatefulWidget {
  @override
  _NativeCameraAppState createState() => _NativeCameraAppState();
}

class _NativeCameraAppState extends State<NativeCameraApp> {
  static const platform = MethodChannel('com.example.native/camera');
  Image? image;

  Future<void> _takePhoto() async {
    try {
      final String base64Image = await platform.invokeMethod('takePhoto');
      setState(() {
        Uint8List imageBytes = base64Decode(base64Image);
        image = Image.memory(imageBytes);
      });
    } on PlatformException catch (e) {
      setState(() {
        image = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Câmera Nativa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image ?? Container(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _takePhoto,
              child: Text('Tirar Foto'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: NativeCameraApp()));
}
