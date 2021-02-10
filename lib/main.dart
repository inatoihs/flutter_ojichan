import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ojii(),
    );
  }
}

class ojii extends StatefulWidget {
  @override
  _ojiiState createState() => _ojiiState();
}

class _ojiiState extends State<ojii> {
  int imageNumber = 0;
  int textNumber = 0;
  int tmpImg, tmpTex;

  List<Text> Lines = [
    Text(
      '歯がピアノだったら咀嚼も音楽になるのにね♪',
    ),
    Text(
      '最近とある女芸人にハマってるんです\nSHISHAMOっていうんですけど',
    ),
    Text(
      '節子それ手榴弾や！！！！！！！',
    ),
    Text(
      '希少な部位だからって美味しいわけじゃないよね',
    ),
    Text(
      '瞼を縫い付けてくれないか？\nこれ以上何も見たくない',
    ),
    Text(
      'もっと言葉の刃で殺り合おうや',
    ),
    Text(
      'ああ～、だから月が赤いんだ',
    ),
    Text(
      '10円拾った！！！！\n生きててよかった本当に',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 120),
        Container(
          child: Image.asset('images/$imageNumber.jpg'),
        ),
        SizedBox(height: 30),
        Positioned(
          top: 10000,
          child: Container(
            child: Text(
              Lines[textNumber].data,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            height: 100,
          ),
        ),
        IconButton(
            alignment: Alignment.bottomCenter,
            icon: Icon(Icons.self_improvement),
            iconSize: 50,
            onPressed: () {
              setState(() {
                makeImage();
                makeText();
              });
            })
      ],
    );
  }

  void makeImage() {
    tmpImg = imageNumber;
    while (tmpImg == imageNumber) {
      imageNumber = Random().nextInt(11);
    }
  }

  void makeText() {
    tmpTex = textNumber;
    while (tmpTex == textNumber) {
      textNumber = Random().nextInt(Lines.length);
    }
  }
}
