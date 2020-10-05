import 'package:flutter/material.dart';

class GreyTopClipper extends CustomClipper<Path> {
  final double yOffset;

  GreyTopClipper({this.yOffset});
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0.0, 265.0 + yOffset)
      ..quadraticBezierTo(
        size.width / 2.0,
        285.0 + yOffset,
        size.width,
        185.0 + yOffset,
      )
      ..lineTo(size.width, 0.0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
