import 'package:flutter/material.dart';

import '../Constant/assets.dart';
import '../Utils/audio_player.dart';
import '../routes.dart';

class GameOver extends StatelessWidget {
  _playSound() async {
     await AudioPlayer.playSound(Assets.game_over);
  }

  @override
  Widget build(BuildContext context) {
    final int score = ModalRoute.of(context)?.settings.arguments as int;
     _playSound();

    return Material(
      child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Game Over",
                style: TextStyle(
                    fontSize: 35.0, color: Colors.white),
              ),
              SizedBox(height: 25.0),
              Text(
                "Score: ${score ?? 0}",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  // color: Colors.red,
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.home, (route) => false);
                  },
                ),
              ),
            ],
          ),
          color: Colors.black.withOpacity(0.6),
        ),
      ),
    );
  }
}
