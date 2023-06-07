
import 'package:flutter_yoga_app/models/course.dart';
import 'package:flutter_yoga_app/models/style.dart';

final _standStyle = Style(
  imageUrl: 'assets/images/pose2.png',
  name: 'Ayakta Durma Tarzı',
  time: 5,
);
final _sittingStyle = Style(
  imageUrl: 'assets/images/pose1.png',
  name: 'Oturma Tarzı',
  time: 8,
);
final _legCrossStyle = Style(
  imageUrl: 'assets/images/pose3.png',
  name: 'Çapraz Bacak  Tarzı',
  time: 6,
);

final styles = [_standStyle,_sittingStyle,_legCrossStyle];

final _course1 = Course(
  imageUrl: 'assets/images/course1.jpg',
  name: 'İleri Germeler',
  time: 45,
  students: 'İleri Seviye'
);

final _course2 = Course(
    imageUrl: 'assets/images/course2.jpg',
    name: 'Günlük Yoga',
    time: 30,
    students: 'Orta seviye'
);

final _course3 = Course(
    imageUrl: 'assets/images/course3.jpg',
    name: 'Meditasyon',
    time: 20,
    students: 'Acemi'
);

final List<Course> courses = [_course1,_course3,_course2];