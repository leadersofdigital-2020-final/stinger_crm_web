import 'package:flutter/material.dart';
import 'package:stinger_crm_web/Components/default_button.dart';
import 'package:stinger_crm_web/Screens/account.dart';
import 'package:stinger_crm_web/Screens/candidates.dart';
import 'package:stinger_crm_web/Screens/requests.dart';
import 'package:stinger_crm_web/Screens/vacancy.dart';
import 'package:stinger_crm_web/Screens/Home/home_screen.dart';
import 'menu_item.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          //page_index=0;
                        });
                          },
          ),
          MenuItem(
            title: "Заявки",
            press: () {
                        setState(() {
                          //page_index=1;
                        });
                          },
          ),
          MenuItem(
            title: "Вакансии",
            press: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Vacancy()),
                          );
                          },
          ),
          MenuItem(
            title: "Кандидаты",
            press: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Candidates()),
                          );
                          },
          ),
          MenuItem(
            title: "Аккаунт",
            press: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Account()),
                          );
                          },
          ),
        ],
      ),
    );
  }
}
