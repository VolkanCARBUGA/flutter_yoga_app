import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.42,
      right: size.width * 0.15,
      child: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          
        },
      ),
    );
  }
}
