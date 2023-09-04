import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void sound(int i) async {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded Button({required Color color, required int soudNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sound(soudNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Button(color: Colors.red, soudNumber: 1),
              Button(color: Colors.orange, soudNumber: 2),
              Button(color: Colors.yellow, soudNumber: 3),
              Button(color: Colors.green, soudNumber: 4),
              Button(color: Colors.teal, soudNumber: 5),
              Button(color: Colors.blue, soudNumber: 6),
              Button(color: Colors.purple, soudNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
