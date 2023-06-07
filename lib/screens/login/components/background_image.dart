import 'package:flutter/material.dart';
import 'package:flutter_yoga_app/constants/constants.dart';

import 'curve_clipper.dart';


class BackgroundImage extends StatefulWidget {
  const BackgroundImage({super.key});

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        color: primary.withOpacity(0.8),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appPadding / 2,
            vertical: appPadding / 3
          ),
          child:
              Center(child: Image(image: AssetImage("assets/images/yoga.png"))),
        ),
      ),
    );
  }
}
