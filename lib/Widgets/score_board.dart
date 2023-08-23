import 'package:flutter/material.dart';

import '../Constant/assets.dart';

class ScoreBoard extends StatelessWidget {
  final int score;

  const ScoreBoard({this.score});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(Assets.zombieHead,fit: BoxFit.cover,),
          width: 60.0,
          height: 60.0,

        ),
        SizedBox(width: 3.0),
        Text(
          "X",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        SizedBox(width: 5.0),
        Text(
          score?.toString() ?? "0",
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
      ],
    );
  }
}
