import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;
  const VerticalSpacer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class HorizontalSpacer extends StatelessWidget {
  final double width;
  const HorizontalSpacer({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
