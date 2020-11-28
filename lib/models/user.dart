
import 'package:flutter/material.dart';

class User {
  final String video, name, image, profession, phone, schedule, employment, education, salary, skills, achievements, expactations, add_info, feedback, date;                      
  final int stage, experience, rating;

  User({@required this.name, @required this.image,this.video,this.stage,this.schedule, this.employment, this.education, this.salary, this.experience, this.skills, this.achievements, this.expactations, this.add_info, this.feedback, this.date, this.profession, this.phone, this.rating});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      //name: json['full_name'],
      name: json["full_name"].toString(),
      image: json["image"],
      video: json["video"],
      stage: json["stage"],
      profession: json["profession"],      
      schedule: json["schedule"],
      employment: json["employment"],
      education: json["education"],
      salary: json["salary"],
      experience: json["experience"],
      skills: json["skills"],
      achievements: json["achievements"],
      expactations: json["expactations"],
      add_info: json["add_info"],
      feedback: json["feedback"],
      date: json["date"],
      phone: json["phone"],
      rating: json["rating"]
    );
  }
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user

User user1 = User(name: "Дык", image: "assets/images/дык.JPG", stage: 4, profession: "Flutter-разработчик", phone:"+79201337568", rating:4);
User user2 = User(name: "Евгений", image: "assets/images/женя.JPG", stage: 3, profession: "Проектный менеджер", phone:"+79200006568", rating:4);
User user3 = User(name: "Алексей", image: "assets/images/ава.jpg", stage: 2, profession: "ИИ-разработчик", phone:"+79202286568", rating:4);
User user4 = User(name: "Павел", image: "assets/images/паша.JPG", stage: 1, profession: "Python-разработчик", phone:"+79050286560", rating:4);

User user5 = User(name: "Социальный пакет", image: "assets/social.png");
User user6 = User(name: "ДМС", image: "assets/medical.png");
User user7 = User(name: "Офис А класса", image: "assets/office.png");
User user8 = User(name: "Наличие парковки", image: "assets/car.png");
User user9 = User(name: "Agile подход", image: "assets/agile.png");
User user10 = User(name: "Спортзал", image: "assets/gym.pngg");