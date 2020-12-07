import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:audioplayers/audioplayers.dart';

class MyAudio extends StatelessWidget {
  AudioCache player = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Asset"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey.shade400,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(80),
                child: Image.asset("assets/music.jpg")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.pause),
                    onPressed: () {
                      audioPlayer.pause();
                    }),
                IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      player.play("song2.wav");
                      // player.play("song1.wav");
                    }),
                IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: () {
                      audioPlayer.stop();
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
