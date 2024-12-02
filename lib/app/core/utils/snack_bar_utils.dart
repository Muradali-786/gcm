import 'package:flutter/material.dart';

class SnackBarUtils {
  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(
    String message, {
    int duration = 2,
    EdgeInsetsGeometry? margin,
    bool isError = false,
  }) {
    rootScaffoldMessengerKey.currentState!
      ..clearSnackBars()
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: isError ? Colors.red : null,
          content: Text(message),
          duration: Duration(seconds: duration),
          margin: margin,
        ),
      );
    // rootScaffoldMessengerKey.currentState!.showSnackBar(
    //   SnackBar(
    //     content: Text(message),
    //   ),
    // );
  }

  static showScaffoldSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }
}
