import 'package:flutter/material.dart';
import 'package:stinger_crm_web/Screens/account.dart';
import 'package:stinger_crm_web/Screens/candidates/candidates.dart';
import 'package:stinger_crm_web/Screens/vacancy/vacancys.dart';
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
                            MaterialPageRoute(builder: (context) => Vacancys()),
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
