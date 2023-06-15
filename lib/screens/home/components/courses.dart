import 'package:flutter/material.dart';
import 'package:flutter_yoga_app/data/data.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(appPadding, 0, appPadding, appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kurslar",
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
          Expanded(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return buildCourses(context, index);
            },
          ))
        ],
      ),
    );
  }
}

Widget buildCourses(BuildContext context, int index) {
  var size = MediaQuery.of(context).size;
  var course = courses[index];
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: appPadding, vertical: appPadding / 2),
    child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 30,
                  offset: Offset(10, 15))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(appPadding/8),
          child: Row(children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(course.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: size.width * 0.4,
              child: Padding(
                padding: EdgeInsets.only(
                    left: appPadding / 2, top: appPadding / 1.5),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.name,
                          style: GoogleFonts.courgette(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.folder_open_rounded,
                                color: black.withOpacity(0.4),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text(
                                course.students,
                                style: GoogleFonts.courgette(
                                    color: black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: black.withOpacity(0.4),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text(
                                course.time.toString()+" dakika",
                                style: GoogleFonts.courgette(
                                    color: black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            )
          ]),
        )),
  );
}
