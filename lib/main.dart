import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int x) {
    final Player = AssetsAudioPlayer();
    Player.open(
      Audio('assets/note$x.wav'),
    );
  }

  Widget buildKey(String txt, int num, Color clr) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num);
        },
        child: Container(
          color: clr,
          width: double.infinity,
          child: Center(
            child: Text(
              '$txt',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
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
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey("Sa", 1, Colors.red),
              buildKey("Re", 2, Colors.lightBlueAccent),
              buildKey("Ga", 3, Colors.blue),
              buildKey("Ma", 4, Colors.greenAccent),
              buildKey("Pa", 5, Colors.green),
              buildKey("Dha", 6, Colors.yellow),
              buildKey("Ni", 7, Colors.yellowAccent),
            ],
          ),
        ),
      ),
    );
  }
}
