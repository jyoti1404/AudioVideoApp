import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_imageandaudio/audio.dart';
import 'package:task1_imageandaudio/home.dart';
import 'package:task1_imageandaudio/image.dart';
import 'package:task1_imageandaudio/video.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  runApp(MyApp());
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => MyHome(),
        "/image": (context) => MyImage(),
        "/audio": (context) => MyAudio(),
        "/video": (context) => MyVideo(),
      },
      initialRoute: "/",
    );
  }
}
