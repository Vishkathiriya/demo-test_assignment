import 'package:first_cry/resource/dimens/dimens.dart';
import 'package:first_cry/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customLoader() {
  return Center(
      child: Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: Dimens.d100.h,
        width: Dimens.d100.w,
        color: Colors.transparent,
      ),
      Container(
        height: Dimens.d100.h,
        width: Dimens.d100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: const Center(
            child: CircularProgressIndicator(
          color: AppStaticColors.eyeGradienttop,
        )),
      )
    ],
  ));
}

Widget smallCustomLoader() {
  return Center(
      child: Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: Dimens.d50.h,
        width: Dimens.d50.w,
        color: Colors.transparent,
      ),
      Container(
        height: Dimens.d50.h,
        width: Dimens.d50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: const Center(
            child: CircularProgressIndicator(
          color: AppStaticColors.eyeGradienttop,
        )),
      )
    ],
  ));
}

class Loader {
  void showLoader(BuildContext context) {
    showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Center(
            child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
            ),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(
                      color: AppStaticColors.eyeGradienttop),
                ),
              ),
            )
          ],
        ));
      },
    );
  }

  void hideLoader(BuildContext context) {
    Navigator.pop(context);
  }
}
