import 'dart:html';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'dart:typed_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(action);
        },
        child: Text(""),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  void playsound(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
    print("note$num.wav");
    // ByteData bytes = await rootBundle.load("note$num.wav");
    // Uint8List sbytes =
    //     bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    // player.p(sbytes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Colors.indigoAccent, action: 1),
            myButton(color: Color.fromARGB(255, 222, 82, 82), action: 2),
            myButton(color: Color.fromARGB(255, 33, 218, 135), action: 3),
            myButton(color: Color.fromARGB(255, 230, 255, 104), action: 4),
            myButton(color: Color.fromARGB(255, 27, 138, 106), action: 5),
            myButton(color: Colors.black, action: 1),
            myButton(color: Color.fromARGB(255, 52, 61, 188), action: 6),
            myButton(color: Color.fromARGB(255, 206, 71, 211), action: 7),
          ],
        ),
      ),
    );
  }
}
