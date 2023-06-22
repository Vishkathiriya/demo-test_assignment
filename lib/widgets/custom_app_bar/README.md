# first_cry

# AppbarWidget
AppbarWidget is a custom Flutter widget that represents a horizontal bar displayed at the top of the screen. It is designed to be used as part of the Scaffold widget in Flutter applications. The AppbarWidget includes toolbar icons, a screen title, and quick action buttons.
To use the AppbarWidget in your application, you need to include it within a Scaffold widget.
## Getting Started
1.Add the necessary dependencies to your pubspec.yaml file:

dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^X.X.X
  google_fonts: ^X.X.X

2.Import the required packages in your Dart file:

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

3.Create an instance of the AppbarWidget and provide the necessary parameters:

AppbarWidget(
  appBarText: 'Screen Title',
  ontap: () {
    // Handle onTap action
  },
  color: Colors.blue, // Customize the background color of the app bar
  textColor: Colors.white, // Customize the text color of the app bar
  icon: Icon(Icons.menu), // Replace with your desired leading icon
  elevaTion: 4.0, // Customize the elevation of the app bar
  actions: [
    // Add any additional action buttons
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Handle search button pressed
      },
    ),
  ],
  leadingBackButton: true, // Enable or disable the leading back button
  backText: Text('Back'), // Replace with your desired back button text
  islocationscreen: false, // Set to true if it's a location screen
)

Note: Make sure to replace X.X.X with the appropriate version numbers for flutter_screenutil and google_fonts based on your pubspec.yaml file.

Feel free to customize the widget and its properties based on your application requirements.


Certainly! Here's an example of how you can create a README file for the given code:

AppbarWidget
AppbarWidget is a custom Flutter widget that represents a horizontal bar displayed at the top of the screen. It is designed to be used as part of the Scaffold widget in Flutter applications. The AppbarWidget includes toolbar icons, a screen title, and quick action buttons.

To use the AppbarWidget in your application, you need to include it within a Scaffold widget.

Getting Started
Add the necessary dependencies to your pubspec.yaml file:
yaml
Copy code
dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^X.X.X
  google_fonts: ^X.X.X
Import the required packages in your Dart file:
dart
Copy code
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
Create an instance of the AppbarWidget and provide the necessary parameters:
dart
Copy code
AppbarWidget(
  appBarText: 'Screen Title',
  ontap: () {
    // Handle onTap action
  },
  color: Colors.blue, // Customize the background color of the app bar
  textColor: Colors.white, // Customize the text color of the app bar
  icon: Icon(Icons.menu), // Replace with your desired leading icon
  elevaTion: 4.0, // Customize the elevation of the app bar
  actions: [
    // Add any additional action buttons
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Handle search button pressed
      },
    ),
  ],
  leadingBackButton: true, // Enable or disable the leading back button
  backText: Text('Back'), // Replace with your desired back button text
  islocationscreen: false, // Set to true if it's a location screen
)
Note: Make sure to replace X.X.X with the appropriate version numbers for flutter_screenutil and google_fonts based on your pubspec.yaml file.

Feel free to customize the widget and its properties based on your application requirements.

# Parameters
appBarText (String): The title text displayed in the app bar.
ontap (void Function()): A callback function to handle the onTap action on the leading icon.
color (Color): The background color of the app bar.
textColor (Color): The text color of the app bar.
icon (Widget): The leading icon widget displayed in the app bar.
elevaTion (dynamic): The elevation of the app bar.
actions (List<Widget>): A list of additional action buttons displayed in the app bar.
leadingBackButton (bool): Determines whether to display the leading back button or not.
backText (Widget): The widget representing the back button text.
islocationscreen (bool): Set to true if it's a location screen, false otherwise.

# Acknowledgements
The AppbarWidget is inspired by Flutter and the Flutter community.