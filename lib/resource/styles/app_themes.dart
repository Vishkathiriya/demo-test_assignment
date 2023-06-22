import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

/// define custom themes here
final lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: statusbar,
  ),
)..addAppColor(
    AppThemeType.light,
    AppColors.defaultAppColor,
  );

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: statusbar,
  ),
)..addAppColor(
    AppThemeType.dark,
    AppColors.darkThemeColor,
  );

const statusbar = SystemUiOverlayStyle(
    statusBarColor: Color(0xff181819),
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light);

enum AppThemeType { light, dark }

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, AppColors> _appColorMap = {};

  void addAppColor(AppThemeType type, AppColors appColor) {
    _appColorMap[type] = appColor;
  }

  AppColors get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ??
        AppColors.defaultAppColor;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();

  static AppThemeType currentAppThemeType = AppThemeType.light;
}
