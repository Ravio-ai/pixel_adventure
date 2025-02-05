import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pixel_adventure.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    PixelAdventure game = PixelAdventure();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameWidget(
        game: kDebugMode ? PixelAdventure() : game,
      ),
    );
  }
}
