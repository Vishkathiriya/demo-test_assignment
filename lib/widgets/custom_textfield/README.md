# first_cry

# AppTextFormField

AppTextFormField is a custom Flutter widget that represents a text form field with customizable properties. It can be used to create input fields in your Flutter application.

# Getting Started

1.Add the necessary dependencies to your pubspec.yaml file:

dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^X.X.X

2.Import the required packages in your Dart file:

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

3.Create an instance of the AppTextFormField widget and provide the necessary parameters:

AppTextFormField(
  controller: myController, // Provide your own TextEditingController
  inputAction: TextInputAction.next, // Customize the keyboard action (optional)
  label: 'Field Label', // Provide the label text for the form field
  hint: 'Field Hint', // Provide a hint text for the form field (optional)
  isObscure: false, // Set to true to obscure the text (password field, for example)
  isCapitalized: false, // Set to true to capitalize the input (optional)
  maxLines: 1, // Set the maximum number of lines for the input (optional)
  maxLength: 10, // Set the maximum length of the input (optional)
  onChanged: (value) {
    // Handle value changes
  },
  obscureText: false, // Set to true to obscure the text (password field, for example)
  isLabelEnabled: true, // Set to false to hide the label (optional)
  validator: (value) {
    // Validate the input value
    if (value == null || value.isEmpty) {
      return 'Field is required';
    }
    return null;
  },
  // Customize the form field further as needed...
)
Note: Make sure to replace X.X.X with the appropriate version number for flutter_screenutil based on your pubspec.yaml file.

Feel free to customize the widget and its properties based on your application requirements.
# Parameters
controller (TextEditingController): The controller for the text field.
inputAction (TextInputAction): The keyboard action for the text field (e.g., "done", "next", "search").
label (String): The label text for the form field.
hint (String): The hint text for the form field.
isObscure (bool): Set to true to obscure the text (password field, for example).
isCapitalized (bool): Set to true to capitalize the input.
maxLines (int): The maximum number of lines for the input.
maxLength (int): The maximum length of the input.
onChanged (ValueChanged<String>): A callback function to handle the value changes in the text field.
obscureText (bool): Set to true to obscure the text (password field, for example).
isLabelEnabled (bool): Set to false to hide the label.
validator (String? Function(String?)?): A callback function to validate the input value.
onFieldSubmitted (Function(String)?): A callback function to handle the form field submission.
readOnly (bool): Set to true to make the text field read-only.
fillcolor (Color?): The background color of the text field.
suffixIcon (Widget?): A widget to display as the suffix icon.
keyboardtype (dynamic): The keyboard type for the text field.
prefix (Widget?): A widget to display as the prefix.
prefixIcon (Widget?): A widget to display as the prefix icon.
autofocus (bool): Set to true to automatically focus the text field.
onTap (dynamic): A callback function to handle taps on the text field.
autofillHints (dynamic): Autofill hints for the text field.
focusNode (FocusNode?): The focus node for the text field.
inputFormatters (List<TextInputFormatter>?): Input formatters for the text field.

Feel free to customize the AppTextFormField widget further based on your project's needs.

# Acknowledgements
The AppTextFormField module is inspired by Flutter and the Flutter community.

