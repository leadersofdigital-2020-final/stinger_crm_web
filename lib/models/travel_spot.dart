import 'package:flutter/material.dart';
import '../size_config.dart';
import 'user.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> users;

  TravelSpot({
    @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "JS",
    image: "assets/images/js.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Java",
    image: "assets/images/java.jpg",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Python",
    image: "assets/images/python.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<TravelSpot> travelSpots2 = [
  TravelSpot(
    users: users2..shuffle(),
    name: "Социальный пакет",
    image: "assets/social.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users2..shuffle(),
    name: "ДМС",
    image: "assets/medical.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users2..shuffle(),
    name: "Офис А класса",
    image: "assets/office.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users2..shuffle(),
    name: "Наличие парковки",
    image: "assets/car.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users2..shuffle(),
    name: "Agile подход",
    image: "assets/agile.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users2..shuffle(),
    name: "Спортзал",
    image: "assets/gym.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<TravelSpot> travelSpots3 = [
  TravelSpot(
    users: users..shuffle(),
    name: "Flutter",
    image: "assets/flutter.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "TensoFlow",
    image: "assets/tf.png",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Java",
    image: "assets/images/java.jpg",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];

List<User> users2 = [user5, user6, user7, user8, user9, user10];