import 'package:flutter/material.dart';

class FeedBack {
  final String profession, employment, education,skills,achievements,add_info,feedback,expectations;
  final int schedule,salary,experience;
  final Color color;

  FeedBack({this.profession, this.employment, this.education, this.skills, this.achievements,this.expectations ,this.add_info, this.feedback, this.schedule, this.salary, this.experience, this.color});
  
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
    
    profession: "ReactJS разработчик",
    salary: 30000,
    
    color: Color(0xFFFFF3DD),
  ),
  FeedBack(
    
    profession: "Java разработчик",
    salary: 40000,
    
    color: Color(0xFFD9FFFC),
  ),
  FeedBack(
    
    profession: "Python Django разработчик",
    salary: 35000,
    
    color: Color(0xFFFFE0E0),
  ),
];

