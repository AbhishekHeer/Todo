import 'package:flutter/material.dart';

class Snackbarservice {
  static showSnackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
