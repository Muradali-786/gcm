import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  final double? dimension;
  final Color? color;
  const AppLoader({
    super.key,
    this.dimension,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: dimension,
        child: CircularProgressIndicator.adaptive(
          valueColor: color == null ? null : AlwaysStoppedAnimation<Color>(color!),
        ),
      ),
    );
  }
}
