import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  final String message;
  final int? maxLines;

  const AppError({
    super.key,
    required this.message,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // 'oops, looks like\nsomething went wrong...',
        message,
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
    );
  }
}
