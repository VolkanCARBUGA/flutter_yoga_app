import 'package:flutter/material.dart';
import 'package:flutter_yoga_app/constants/constants.dart';
import 'package:flutter_yoga_app/data/data.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/style.dart';

class DiffStyles extends StatelessWidget {
  buildStyles(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    Style style = styles[index];
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appPadding / 2,
          ),
          child: Container(
            margin:
                EdgeInsets.only(top: appPadding * 3, bottom: appPadding * 2),
            width: size.width * 0.4,
            height: size.height * 0.4,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.3), offset: Offset(5, 15))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding / 2, right: appPadding * 4),
                  child: Text(
                    textAlign: TextAlign.start,
                    style.name,
                    style: GoogleFonts.courgette(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: appPadding / 2,
                      right: appPadding / 2,
                      bottom: appPadding),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.access_alarms_outlined,
                            color: black.withOpacity(0.5),
                            size: 30,
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Text(
                            style.time.toString() + "dakika",
                            style: GoogleFonts.courgette(
                                fontSize: 15,
                                color: black.withOpacity(0.8),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                        Container(
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: white,
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Positioned(
            right: 0,
            top: 0,
           // bottom: 10,

            child: Image(
              image: AssetImage(style.imageUrl),
              width: size.width * 0.3,
              height: size.height * 0.2,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Yeni Başlayanlar İçin",
                style: GoogleFonts.courgette(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "Tümünü Görüntüle",
                style: GoogleFonts.courgette(
                    color: primary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: appPadding / 2),
          child: Container(
            height: size.height * 0.30,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: styles.length,
              itemBuilder: (context, index) {
                return buildStyles(context, index);
              },
            ),
          ),
        )
      ],
    );
  }
}
