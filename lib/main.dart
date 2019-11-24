import 'package:flame/game.dart';
import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_game/game/components/bar.dart';
import 'package:test_game/game/test_game.dart';

void main () async{

  WidgetsFlutterBinding.ensureInitialized();

  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  Size size = await flameUtil.initialDimensions();

  runApp(GameWrapper(size));

}

class GameWrapper extends StatelessWidget {

  Size size;

  GameWrapper(this.size);

  @override
  Widget build(BuildContext context) {

    final game = TestGame(size);

    return Container(
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details){
          game.bar.moveBar(details.delta);
        },
        child: game.widget,
      ),
    );
  }
}
