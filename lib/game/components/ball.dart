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
  double speedX = 100;
  double speedY = -100;
  double x = 0;
  double y = 0;

  Ball(this.size, this.tileSize){

    rectX = size.width / 2.1;
    rectY = size.height / 1.14;

    x = speedX;
    y = speedY;

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
      0,
      y * dt,

    );

    // EIXO X
    if(rect.left > size.width - 20){
      x = speedY;
    }  else if(rect.left < 8){
      x = speedX;
    }


    // EIXO Y
    if(rect.top < 20){
      y = speedX;
    } else if( rect.top > (size.height - 53)){
      y = speedY;
    }



    //print("LEFT: ${rect.left}");
    print("TOP: ${rect.top}");
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