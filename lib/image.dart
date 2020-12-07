import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Asset"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey.shade400,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
              margin: EdgeInsets.all(40),
              child: Image.asset("assets/image1.jpg")),
        ),
      ),
    );
  }
}
