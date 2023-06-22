import 'package:flutter/material.dart';
import 'app_themes.dart';

class AppColors {
  const AppColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.primaryGradient,
    required this.textPrimary,
    required this.textSecondary,
    required this.textSubtitle,
    required this.backgroundDark,
    required this.backgroundLight,
    required this.utilityBorder,
    required this.utilityFieldFill,
    required this.errorColor,
    required this.successColor,
    required this.warningColor,
    required this.infoColor,
    required this.transparent,
    required this.profileButtomNavigationBar,
    required this.profileButtomNavigationBarIconBackground,
    required this.settingButtomNavigationBarIconBackground,
    required this.bottomNavigationBar,
    required this.bottomBarIconInactive,
  });

  static late AppColors _current;

  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color textPrimary;
  final Color textSecondary;
  final Color textSubtitle;
  final Color backgroundDark;
  final Color backgroundLight;
  final Color utilityBorder;
  final Color utilityFieldFill;
  final Color errorColor;
  final Color successColor;
  final Color warningColor;
  final Color infoColor;
  final Color transparent;
  final Color profileButtomNavigationBar;
  final Color profileButtomNavigationBarIconBackground;
  final Color settingButtomNavigationBarIconBackground;
  final Color bottomNavigationBar;
  final Color bottomBarIconInactive;

  /// gradient
  final LinearGradient primaryGradient;

  static const defaultAppColor = AppColors(
    primaryColor: Color(0xff0EBE7F),
    secondaryColor: Color.fromARGB(255, 62, 62, 70),
    primaryTextColor: Color.fromARGB(255, 62, 62, 70),
    secondaryTextColor: Color(0xffF3D7B5),
    primaryGradient: LinearGradient(
      colors: [
        Color(0xFFFFFFFF),
        Color(0xFFFE6C30),
      ],
    ),
    textPrimary: Color(0xff222222),
    textSecondary: Color(0xff333333),
    textSubtitle: Color(0xff677294),
    backgroundDark: Color(0xff181819),
    backgroundLight: Color(0xff202021),
    utilityFieldFill: Color(0xff1D1D1E),
    utilityBorder: Color(0xff161617),
    successColor: Color.fromRGBO(137, 211, 198, 1),
    warningColor: Color.fromRGBO(219, 212, 200, 1),
    errorColor: Color.fromRGBO(222, 38, 68, 1),
    infoColor: Color.fromRGBO(231, 234, 240, 1),
    transparent: Colors.transparent,
    profileButtomNavigationBar: Colors.deepPurple,
    profileButtomNavigationBarIconBackground: Colors.black12,
    settingButtomNavigationBarIconBackground: Colors.black,
    bottomNavigationBar: Color(0xff181819),
    bottomBarIconInactive: Color(0xff858EA9),
  );

  static const darkThemeColor = AppColors(
    primaryColor: Color(0xff0EBE7F),
    secondaryColor: Color.fromARGB(255, 166, 168, 254),
    primaryTextColor: Color.fromARGB(255, 166, 168, 254),
    secondaryTextColor: Color.fromARGB(255, 62, 62, 70),
    primaryGradient: LinearGradient(
      colors: [
        Color(0xFFFFFFFF),
        Color(0xFFFE6C30),
      ],
    ),
    textPrimary: Color(0xffF3D7B5),
    textSecondary: Color(0xff333333),
    textSubtitle: Color(0xff677294),
    backgroundDark: Color(0xff181819),
    backgroundLight: Color(0xff202021),
    utilityFieldFill: Color(0xff1D1D1E),
    utilityBorder: Color(0xff161617),
    successColor: Color.fromRGBO(137, 211, 198, 1),
    warningColor: Color.fromRGBO(219, 212, 200, 1),
    errorColor: Color.fromRGBO(222, 38, 68, 1),
    infoColor: Color.fromRGBO(231, 234, 240, 1),
    transparent: Colors.transparent,
    profileButtomNavigationBar: Colors.deepPurple,
    profileButtomNavigationBarIconBackground: Colors.black12,
    settingButtomNavigationBarIconBackground: Colors.black,
    bottomNavigationBar: Color(0xff181819),
    bottomBarIconInactive: Color(0xff858EA9),
  );

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    _current = appColor;

    return _current;
  }

  AppColors copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    LinearGradient? primaryGradient,
    Color? textPrimary,
    Color? textSecondary,
    Color? textSubtitle,
    Color? backgroundDark,
    Color? backgroundLight,
    Color? utilityBorder,
    Color? utilityFieldFill,
    Color? errorColor,
    Color? successColor,
    Color? warningColor,
    Color? infoColor,
    Color? transparent,
    Color? profileButtomNavigationBar,
    Color? profileButtomNavigationBarIconBackground,
    Color? settingButtomNavigationBarIconBackground,
    Color? bottomNavigationBar,
    Color? bottomBarIconInactive,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textSubtitle: textSubtitle ?? this.textSubtitle,
      backgroundDark: backgroundDark ?? this.backgroundDark,
      backgroundLight: backgroundLight ?? this.backgroundLight,
      utilityBorder: utilityBorder ?? this.utilityBorder,
      utilityFieldFill: utilityFieldFill ?? this.utilityFieldFill,
      errorColor: errorColor ?? this.errorColor,
      warningColor: warningColor ?? this.warningColor,
      successColor: successColor ?? this.successColor,
      infoColor: infoColor ?? this.infoColor,
      transparent: transparent ?? this.transparent,
      profileButtomNavigationBar:
          profileButtomNavigationBar ?? this.profileButtomNavigationBar,
      profileButtomNavigationBarIconBackground:
          profileButtomNavigationBarIconBackground ??
              this.profileButtomNavigationBarIconBackground,
      settingButtomNavigationBarIconBackground:
          settingButtomNavigationBarIconBackground ??
              this.settingButtomNavigationBarIconBackground,
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
      bottomBarIconInactive:
          bottomBarIconInactive ?? this.bottomBarIconInactive,
    );
  }
}

class AppStaticColors {
  static const Color toothGradienttop = Color(0xff2753F3);
  static const Color toothGradientbottom = Color(0xff765AFC);
  static const Color heartGradienttop = Color(0xff0EBE7E);
  static const Color heartGradientbottom = Color(0xff07D9AD);
  static const Color eyeGradienttop = Color(0xffFE7F44);
  static const Color eyeGradientbottom = Color(0xffFFCF68);

  static const Color textcolorgreen = Color(0xff0EBE7F);

  static const Color black = Color(0xff000000);
  static const Color grayboxcolor = Color(0xffF2F2F2);
  static const Color whitecolor = Color(0xffFFFFFF);
  static const Color boxscolorgreen = Color(0xffEAF9F5);
  static const Color boxshedowcolor = Color(0xffF1F2F3);
  static const Color textcolorred = Colors.redAccent;

//------------------------------NEW LOGIN COLOR-------------------------------//

  static const Color greaytText = Color(0xff737373);
  static const Color shedowgreencolor = Color(0xffC8F0E5);
  static const Color boxcolorss = Color(0xffE5E5E5);
}
