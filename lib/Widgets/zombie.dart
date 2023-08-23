import 'package:flutter/material.dart';

import '../Constant/assets.dart';

class Zombie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(Assets.zombieMock),
      width: 100.0,
      height: 100.0,
    );
  }
}

