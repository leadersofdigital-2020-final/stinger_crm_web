import 'package:flutter/material.dart';

import 'package:stinger_crm_web/Screens/Home/Components/body.dart';
import 'package:stinger_crm_web/Screens/account.dart';
import 'package:stinger_crm_web/Screens/candidates.dart';
import 'package:stinger_crm_web/Screens/Home/requests/requests.dart';
import 'package:stinger_crm_web/Screens/vacancy.dart';

import 'Components/menu_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page_index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        _body(page_index, size),
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                height: 25,
                alignment: Alignment.topCenter,
              ),
              SizedBox(width: 5),
              Text(
                "HR вок".toUpperCase(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              MenuItem(
                title: "Главная",
                press: () {
                  setState(() {
                    page_index = 0;
                  });
                },
              ),
              MenuItem(
                title: "Заявки",
                press: () {
                  setState(() {
                    page_index = 1;
                  });
                  
                },
              ),
              MenuItem(
                title: "Вакансии",
                press: () {
                  setState(() {
                    page_index = 2;
                  });
                },
              ),
              MenuItem(
                title: "Кандидаты",
                press: () {
                  setState(() {
                    page_index = 3;
                  });
                },
              ),
              MenuItem(
                title: "Аккаунт",
                press: () {
                  setState(() {
                    page_index = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

_body(int selectedIndex, Size size) {
  switch (selectedIndex) {
    case 0:
      return Homebody(size);
      break;
    case 1:
      return Requests();
      break;
    case 2:
      return Vacancy();
      break;
    case 3:
      return Candidates();
      break;
    case 4:
      return Account();
      break;
    default:
      return Container();
  }
}

Widget Homebody(Size size) {
  return Container(
    height: size.height,
    // it will take full width
    width: size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/bg2.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //CustomAppBar(),
        Spacer(),
        // It will cover 1/3 of free spaces
        Body(),
        Spacer(
          flex: 2,
        ),
        // it will cover 2/3 of free spaces
      ],
    ),
  );
}
