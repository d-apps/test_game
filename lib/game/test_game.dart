import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/time.dart';
import 'package:flutter/material.dart';
import 'package:test_game/game/components/ball.dart';
import 'package:test_game/game/components/bar.dart';
import 'package:test_game/game/components/block.dart';

class TestGame extends Game {

  Size screenSize;
  double tileSize;
  Ball ball;
  Bar bar;

  TestGame(this.screenSize){
    initialize();
  }

  void initialize(){

      tileSize = screenSize.width / 9;

      print(screenSize.width);
      print(screenSize.height);

      ball = Ball(screenSize, tileSize,);
      bar = Bar(screenSize);

  }

  @override
  void render(Canvas canvas) {

    for(int i=0; i <6; i++){

      Block(size: screenSize, x: 73.0 * i, y: 16.0).render(canvas);
      Block(size: screenSize, x: 73.0 * i, y: 56.0).render(canvas);

    }

    ball.render(canvas);
    bar.render(canvas);

  }

  @override
  void update(double t) {

    ball.update(t);

  }



}