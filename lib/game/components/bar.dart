

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar {

  Rect rect;
  Color barColor = Colors.blue;
  Size size;
  Paint paint;
  int BAR_SPEED = 500;

  Bar(this.size){

    paint = Paint()..color = barColor;

    rect = Rect.fromLTWH(
        size.width / 2.7,
        size.height / 1.1,
        100,
        25
    );

  }

  void moveBar(Offset delta){
    rect = rect.translate(
    delta.dx,
    0
    );

  }

  void render(Canvas canvas){
    canvas.drawRect(rect, paint);
  }

  void update(double dt){


  }

}