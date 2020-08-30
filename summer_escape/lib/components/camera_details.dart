import 'package:flutter/material.dart';

class CameraDetailsPage extends StatefulWidget {
  final String capturedImage;
  CameraDetailsPage(this.capturedImage);
  @override
  _CameraDetailsPageState createState() => _CameraDetailsPageState();
}

class _CameraDetailsPageState extends State<CameraDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: <Widget>[
          Text(
            widget.capturedImage,
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
