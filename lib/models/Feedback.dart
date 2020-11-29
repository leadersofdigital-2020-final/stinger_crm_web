import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "ReactJS разработчик",
    review: review,
    userPic: "assets/images/js.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Java разработчик",
    review: review,
    userPic: "assets/images/java.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Python Django разработчик",
    review: review,
    userPic: "assets/images/python.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Контент для Алексея';