import 'package:flutter/material.dart';

/// this [MyBehavior] use  to remove Scroll Glow

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
