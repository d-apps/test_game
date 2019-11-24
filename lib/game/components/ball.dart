import 'dart:math';

import 'package:flame/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

class Ball extends Component{

  Paint paint;
  Size size;
  Rect rect;
  Random random = Random();
  double tileSize;
  double speedX = 50;
  double speedY = -50;
  double x = 0;
  double y = 0;

  Ball(this.size, this.tileSize){


    paint = Paint()..color = Colors.white;
        //..style = PaintingStyle.stroke;

    rect = Rect.fromLTWH(
        size.width / 2.1, // 172.42
        size.height / 1.14, // 561.00
        20,
        20
    );


  }

  void moveBall(double dt){

    // EIXO X
    if(rect.left > size.width - 20){
      speedX = speedY;
    } else if(rect.left < 1){
      speedX = 50;
    }


    // EIXO Y
    if(rect.bottom < 20){
      speedY = speedX;
    } else if(rect.bottom > size.height - 20){
      speedY = -50;
    }



    rect = rect.translate(
      speedX * dt,
      speedY * dt,

    );

    //print("LEFT: ${rect.left}");
    print("TOP: ${rect.top}");
    //print("RIGHT: ${rect.right}");
    print("BOTTOM: ${rect.bottom}");


  }

  void render(Canvas canvas){

    canvas.drawOval(rect, paint);

  }

  void update(double dt){

    moveBall(dt);

  }




}