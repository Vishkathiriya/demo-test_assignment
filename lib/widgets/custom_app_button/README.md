# first_cry

# AppButton

AppButton is a custom Flutter widget that represents a button with customizable text and width. It can be used to create interactive buttons in your Flutter application.

1.Add the necessary dependencies to your pubspec.yaml file:

dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^X.X.X

2.Import the required packages in your Dart file:

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

3.Create an instance of the AppButton widget and provide the necessary parameters:

AppButton(
  buttonText: 'Button Text',
  width: 150.0, // Customize the width of the button (optional)
  onPressed: () {
    // Handle button press
  },
)

Note: Make sure to replace X.X.X with the appropriate version number for flutter_screenutil based on your pubspec.yaml file.

Feel free to customize the widget and its properties based on your application requirements.

# Parameters
buttonText (String): The text displayed on the button.
width (double): The width of the button. If not provided, the button width will be determined automatically.
onPressed (Function): A callback function to handle the button press action.

# Acknowledgements
The AppButton widget is inspired by Flutter and the Flutter community.