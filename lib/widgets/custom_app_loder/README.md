# first_cry

# Custom Loaders
The Custom Loaders module provides two custom loader widgets in Flutter that can be used to display loading indicators in your application.

# Getting Started

1.Add the necessary dependencies to your pubspec.yaml file:

dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^X.X.X

2.Import the required packages in your Dart file:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

3.Use the customLoader() and smallCustomLoader() widgets to display the loaders:

// Custom Loader
Widget customLoader() {
  // Implementation details...
}

// Small Custom Loader
Widget smallCustomLoader() {
  // Implementation details...
}

Note: Make sure to replace X.X.X with the appropriate version number for flutter_screenutil based on your pubspec.yaml file.

Feel free to customize the loaders and their properties based on your application requirements.

 # customLoader()
 The customLoader() widget displays a larger custom loader with a circular progress indicator.

#  smallCustomLoader()
The smallCustomLoader() widget displays a smaller custom loader with a circular progress indicator.

# Acknowledgements
The Custom Loaders module is inspired by Flutter and the Flutter community.