import 'package:first_cry/screen/login_screen/login_screen.dart';
import 'package:first_cry/screen/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Handler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Handler();
  }
}

class _Handler extends State<Handler> {
  bool showSignin = true;

  void toggleView() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return LoginScreen(toggleView: toggleView);
    } else {
      return SignUpScreen(toggleView: toggleView);
    }
  }
}
