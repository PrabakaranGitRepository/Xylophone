import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(num) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$num.wav'),
    );
  }

  Expanded ButtonKey({color, sound}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            PlaySound(sound);
          },
          child: Container(),
        ),
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
            children: [
              ButtonKey(color: Colors.red, sound: 1),
              ButtonKey(color: Colors.orange, sound: 2),
              ButtonKey(color: Colors.yellow, sound: 3),
              ButtonKey(color: Colors.lightGreen, sound: 4),
              ButtonKey(color: Colors.green, sound: 5),
              ButtonKey(color: Colors.blue, sound: 6),
              ButtonKey(color: Colors.purple, sound: 7)
            ],
          ),
        ),
      ),
    );
  }
}
