import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var curvePoint1 = Offset(0, size.height * 0.825);
    var centerPoint = Offset(size.width * 0.25, size.height * 0.825);
    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);
    path.lineTo(size.width * 0.75, size.height * 0.825);
    var curvePoint2 = Offset(size.width, size.height * 0.825);
    var endPoint = Offset(size.width, size.height * 0.650);
    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
