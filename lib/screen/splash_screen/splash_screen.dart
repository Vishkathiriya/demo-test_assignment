import 'dart:async';
import 'package:first_cry/helper/services/handler.dart';
import 'package:first_cry/main.dart';
import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/resource/generated/assets.gen.dart';
import 'package:first_cry/screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _gotoNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(Dimens.d16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildSplashlogo()]),
      ),
    );
  }

  _buildSplashlogo() {
    return Container(
      height: Dimens.d170.h,
      width: Dimens.d400.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.png.firstcry.provider(),
              filterQuality: FilterQuality.high)),
    );
  }

  /// this [_gotoNext] Function use for Navigate screen after 3 second to next screen
  _gotoNext() {
    Future.delayed(const Duration(seconds: 3), () {
      FocusScope.of(context).requestFocus(FocusNode());
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Wrapper();
        },
      ));
    });
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);
    if (user == null) {
      return Handler();
    } else {
      return const HomeScreen();
    }
  }
}
