// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Camera",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
