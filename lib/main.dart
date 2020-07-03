import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void thePlayer(int n) {
    final music = AudioCache();
    music.play('note$n.wav');
  }

  Expanded musicalkey(int n, int c) {
    return Expanded(
      child: FlatButton(
        color: new Color(c),
        onPressed: () {
          thePlayer(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'xylophone',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )),
          body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  musicalkey(1, 0xFF6d6875),
                  musicalkey(2, 0xFF654F6F),
                  musicalkey(3, 0xFFb5838d),
                  musicalkey(4, 0xFFe5989b),
                  musicalkey(5, 0xFFffb4a2),
                  musicalkey(6, 0xFFffcdb2),
                  musicalkey(7, 0xFF070600),
                ]),
          )),
    );
  }
}
