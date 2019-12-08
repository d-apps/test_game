import 'dart:math';

import 'package:flame/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_game/game/test_game.dart';

class Block {

  Random random;
  Rect rect;
  Paint paint = Paint();
  Size size;
  double x;
  double y;
  Color color;

  Timer timer;

  List<Color> colors = [

    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.grey[400],
    Colors.purple,

  ];


  Block({this.size, this.x, this.y}){

    random = Random();

    color = colors[random.nextInt(6)];

    paint = Paint()..color = color;
    //..style = PaintingStyle.stroke;

    rect = Rect.fromLTWH(
        x + 1,
        y,
        size.width / 5.5,
        size.height / 18
    );



  }

  void render(Canvas canvas){

      canvas.drawRect(rect, paint);
  }

  void update(double td){


  }


}