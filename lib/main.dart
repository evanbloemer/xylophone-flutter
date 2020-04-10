import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded xylophoneKey(String fileName, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play(fileName);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneKey('note1.wav', Colors.red),
              xylophoneKey('note2.wav', Colors.orange),
              xylophoneKey('note3.wav', Colors.yellow),
              xylophoneKey('note4.wav', Colors.green),
              xylophoneKey('note5.wav', Colors.blue),
              xylophoneKey('note6.wav', Colors.indigo),
              xylophoneKey('note7.wav', Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
