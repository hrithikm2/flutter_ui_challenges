import 'package:flutter/material.dart';

/// Diagonal clipper with rounded borders
class RoundedDiagonalPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0) //no role
      ..quadraticBezierTo(size.width, 0, size.width, 10)
      ..lineTo(45, 70)
      ..quadraticBezierTo(10, 85, 0, 140)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
