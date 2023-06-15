import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import '../../../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              decoration: BoxDecoration(
                color: primary,
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/propic.jpeg"),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            Text(
              'Tamara Bellis',
              style: GoogleFonts.sueEllenFrancisco(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic),
            )
          ]),
          Row(
            children: [
              Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(appPadding/15),
                      child: Text(
                        "0",
                        style: GoogleFonts.openSans(
                          fontSize: 10,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: white
                        )
                            ,
                      ),
                    ),
                  )
                ],
              ),
              Transform(
                  transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.sort_rounded,
                    size: 30,
                    color: Colors.black,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
