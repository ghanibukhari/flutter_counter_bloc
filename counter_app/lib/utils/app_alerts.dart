import 'package:flutter/material.dart';

class AppAlerts {
  static showSnackError(context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(error),
      backgroundColor: Theme.of(context).errorColor,
      duration: const Duration(milliseconds: 100),
    ));
  }

  static showSnackInfo(context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(error),
      backgroundColor: Theme.of(context).hintColor,
      duration: const Duration(milliseconds: 100),
    ));
  }
}
