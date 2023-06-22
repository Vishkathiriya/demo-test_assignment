# first_cry

# Toast Message Widget
The toastMessageWidget function is a utility method that displays a toast message as a SnackBar in a Flutter application.

# Usage
To use the toastMessageWidget function, follow these steps

1.Import the necessary package in your Dart file:
import 'package:flutter/material.dart';

2.Call the toastMessageWidget function with the required parameters:
toastMessageWidget(context, message, success);

context (BuildContext): The current build context.
message (String): The message to be displayed in the toast.
success (bool?): A boolean value indicating whether the toast represents a success message (optional).

# Example
Here's an example of how you can use the toastMessageWidget function:

toastMessageWidget(context, 'Login Successful', true);
This will display a floating SnackBar with the message "Login Successful" and a green background, indicating a success message.

toastMessageWidget(context, 'Login Failed', false);
This will display a floating SnackBar with the message "Login Failed" and a red background, indicating an error message.

Feel free to customize the toastMessageWidget function and its parameters based on your application's requirements.

# Acknowledgements
The toastMessageWidget function is inspired by Flutter and the Flutter community.