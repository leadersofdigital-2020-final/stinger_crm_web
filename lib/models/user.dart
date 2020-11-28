
import 'package:flutter/material.dart';

class User {
  final String name, image, vac, cell_number;
  final int stage, rating;

  User({@required this.name, @required this.image, this.stage, this.vac, this.cell_number, this.rating});
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user

User user1 = User(name: "Дык", image: "assets/images/дык.JPG", stage: 4, vac: "Flutter-разработчик", cell_number:"+79201337568", rating:4);
User user2 = User(name: "Женя", image: "assets/images/женя.JPG", stage: 3, vac: "Проектный менеджер", cell_number:"+79200006568", rating:4);
User user3 = User(name: "Алексей", image: "assets/images/ава.jpg", stage: 2, vac: "ИИ-разработчик", cell_number:"+79202286568", rating:4);
User user4 = User(name: "Паша", image: "assets/images/паша.JPG", stage: 1, vac: "Python-разработчик", cell_number:"+79050286560", rating:4);

User user5 = User(name: "Социальный пакет", image: "assets/social.png");
User user6 = User(name: "ДМС", image: "assets/medical.png");
User user7 = User(name: "Офис А класса", image: "assets/office.png");
User user8 = User(name: "Наличие парковки", image: "assets/car.png");
User user9 = User(name: "Agile подход", image: "assets/agile.png");
User user10 = User(name: "Спортзал", image: "assets/gym.pngg");