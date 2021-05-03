import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.clearCache();
    player.play('note$num.wav');
    player.clearCache();
  }

  TextButton buildKey({int num, Color color}) {
    return TextButton(
      onPressed: () {
        playSound(num);
      },
      child: Container(
        height: 50.0,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildKey(num: 1, color: Colors.red),
              buildKey(num: 2, color: Colors.orange),
              buildKey(num: 3, color: Colors.yellow),
              buildKey(num: 4, color: Colors.green),
              buildKey(num: 5, color: Colors.blue),
              buildKey(num: 6, color: Colors.indigo),
              buildKey(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
