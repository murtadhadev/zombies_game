import 'package:flutter/material.dart';

import '../Constant/assets.dart';

class Plant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(Assets.plantMock),
      width: 60.0,
      height: 60.0,
    );
  }
}
