import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variables
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  //fonction pour changer les images
  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          title: const Text("TATABOQ "),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              child: Text(
                leftImageNumber == rightImageNumber
                    ? 'Felicitations !! vous avez reussi ^^'
                    : 'Essaie une autre fois :( ',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            changeImage();
                          });
                        },
                        child:
                            Image.asset("images/image-$leftImageNumber.png")),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            changeImage();
                          });
                        },
                        child:
                            Image.asset("images/image-$rightImageNumber.png")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
