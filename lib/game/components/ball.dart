import 'dart:math';

import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

class Ball extends Component{

  Paint paint;
  Size size;
  Rect rect;
  double rectX;
  double rectY;

  Random random = Random();
  double tileSize;
  double speedX = 25;
  double speedY = -25;
  double x = 0;
  double y = 0;

  Ball(this.size, this.tileSize){

    rectX = size.width / 2.1;
    rectY = size.height / 1.14;

    paint = Paint()..color = Colors.white;
        //..style = PaintingStyle.stroke;

    rect = Rect.fromLTWH(
        rectX, // 172.42
        rectY, // 561.00
        20,
        20
    );


  }

  void moveBall(double dt){


    rect = rect.translate(
      speedX * dt,
      0,

    );

    // EIXO X
    if(rect.left > size.width - 20){
      speedX = speedY;
    }

    //else if(rect.left < 20){
    //  speedX = 50;
    //}

    /*

    // EIXO Y
    if(rect.bottom < 20){
      speedY = speedX;
    } else if(rect.bottom > size.height - 20){
      speedY = -50;
    }

      speedX * dt,
      speedY * dt,


     */

    print("LEFT: ${rect.left}");
    //print("TOP: ${rect.top}");
    //print("RIGHT: ${rect.right}");
    //print("BOTTOM: ${rect.bottom}");


  }

  void render(Canvas canvas){

    canvas.drawOval(rect, paint);

  }

  void update(double dt){

    moveBall(dt);

  }




}