import 'package:flutter/material.dart';

class FeedBack {
  final String image, profession, employment, education,skills,achievements,add_info,feedback,expectations;
  final int schedule,salary,experience;
  final Color color;

  FeedBack({this.image, this.profession, this.employment, this.education, this.skills, this.achievements,this.expectations ,this.add_info, this.feedback, this.schedule, this.salary, this.experience, this.color});
  
  factory FeedBack.fromJson(Map<String, dynamic> json) {
    return FeedBack(
      //name: json['full_name'],
     
      profession: json["profession"],      
      schedule: json["schedule"],
      employment: json["employment"],
      education: json["education"],
      salary: json["salary"],
      experience: json["experience"],
      skills: json["skills"],
      achievements: json["achievements"],
      expectations:json["expectations"],
      add_info: json["add_info"],
      feedback: json["feedback"],
    );
  }
}

// List of demo feedbacks
List<FeedBack> feedbacks = [
  FeedBack(
    image: "assets/images/js.png",
    profession: "ReactJS разработчик",
    salary: 30000,
    skills: "Git, Javascript, jsx",
    color: Color(0xFFFFF3DD),
  ),
  FeedBack(
    image:"assets/images/java.jpg",
    profession: "Java разработчик",
    salary: 40000,
    skills: "Java, Git, Kotlin",
    color: Color(0xFFD9FFFC),
  ),
  FeedBack(
    image:"assets/images/python.png",
    profession: "Python Django разработчик",
    salary: 35000,
    skills: "Git, python, http",
    color: Color(0xFFFFE0E0),
  ),
];

