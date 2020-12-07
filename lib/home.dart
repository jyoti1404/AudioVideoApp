import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets App"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey.shade400,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade800,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/image");
                },
                child: Container(
                    child: Text(
                  "SEE  IMAGE",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            Container(
              color: Colors.grey.shade800,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/audio");
                },
                child: Text(
                  "PLAY  AUDIO",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade800,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/video");
                },
                child: Text(
                  "PLAY  VIDEO",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
