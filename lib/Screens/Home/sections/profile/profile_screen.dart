import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'info.dart';
import 'profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/pic.png",
            name: "Вася Пупкин",
            email: "tagidick_tagidick@mail.ru",
          ),
          SizedBox(height: 10), //20
          ProfileMenuItem(
            iconSrc: Icons.settings,
            title: "Настройки",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: Icons.article,
            title: "Безопасность",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: Icons.person,
            title: "Выход",
            press: () {},
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Профиль"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Редактировать",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}