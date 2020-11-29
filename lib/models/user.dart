
import 'package:flutter/material.dart';

class User {
  final String second_image, video, name, image, profession, phone, schedule, employment, education, salary, skills, achievements, expactations, add_info, feedback, date;                      
  final int stage, experience, rating;

  User({this.second_image, @required this.name, @required this.image,this.video,this.stage,this.schedule, this.employment, this.education, this.salary, this.experience, this.skills, this.achievements, this.expactations, this.add_info, this.feedback, this.date, this.profession, this.phone, this.rating});

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

User user1 = User(name: "Фам Минь Дык", image: "assets/images/work_2.jpg", stage: 4, profession: "Flutter-разработчик", phone:"+79201337568", rating:4);
User user2 = User(name: "Евгений Жданов", image: "assets/images/work_1.jpg", second_image: "assets/images/eugene.png", stage: 3, profession: "Проектный менеджер", phone:"+79200006568", rating:4, video: "assets/resume.mp4");
User user3 = User(name: "Алексей Сенников", image: "assets/images/work_3.jpg", second_image: "assets/images/alexei.png", stage: 2, profession: "ИИ-разработчик", phone:"+79202286568", rating:4);
User user4 = User(name: "Павел Ивин", image: "assets/images/work_4.jpg", stage: 1, profession: "Python-разработчик", phone:"+79050286560", rating:4);

User user5 = User(name: "Социальный пакет", image: "assets/social.png");
User user6 = User(name: "ДМС", image: "assets/medical.png");
User user7 = User(name: "Офис А класса", image: "assets/office.png");
User user8 = User(name: "Наличие парковки", image: "assets/car.png");
User user9 = User(name: "Agile подход", image: "assets/agile.png");
User user10 = User(name: "Спортзал", image: "assets/gym.pngg");