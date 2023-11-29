import 'package:flutter/material.dart';
class ContainerClipper extends CustomClipper<Path> {
  Path path = Path();

  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.2, size.height - 80, size.width * 0.4, size.height - 30);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, size.width * 0.6, size.height);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}