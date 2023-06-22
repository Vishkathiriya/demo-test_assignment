import 'package:flutter/material.dart';

toastMessageWidget(BuildContext context, String message, bool? success) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 1),
    margin: const EdgeInsets.all(25),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    behavior: SnackBarBehavior.floating,
    content: Text(message),
    backgroundColor: success ?? false ? Colors.green : Colors.red,
  ));
}
