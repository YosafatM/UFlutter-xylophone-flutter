import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numberSound) {
    final player = AudioCache();
    player.play('note$numberSound.wav');
  }

  Widget xylophoneButton(int note, MaterialColor color) {
    return Expanded(
        child: FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        playSound(note);
      },
      child: Container(
        color: color,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              xylophoneButton(1, Colors.red),
              xylophoneButton(2, Colors.orange),
              xylophoneButton(3, Colors.yellow),
              xylophoneButton(4, Colors.green),
              xylophoneButton(5, Colors.teal),
              xylophoneButton(6, Colors.blue),
              xylophoneButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
