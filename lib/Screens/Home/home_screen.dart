// import 'package:flutter/material.dart';
//
// import 'package:stinger_crm_web/Screens/Home/Components/user_card.dart';
// import 'package:stinger_crm_web/Screens/account.dart';
// import 'package:stinger_crm_web/Screens/candidates/candidates.dart';
// import 'package:stinger_crm_web/Screens/Home/requests/requests.dart';
// import 'package:stinger_crm_web/Screens/vacancy/vacancys.dart';
//
// import 'Components/menu_item.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int page_index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: Stack(children: [
//         _body(page_index, size),
//         Container(
//           margin: EdgeInsets.all(20),
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(46),
//             boxShadow: [
//               BoxShadow(
//                 offset: Offset(0, -2),
//                 blurRadius: 30,
//                 color: Colors.black.withOpacity(0.16),
//               ),
//             ],
//           ),
//           child: Row(
//             children: <Widget>[
//
//               SizedBox(width: 5),
//               Text(
//                 "HR вок".toUpperCase(),
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               Spacer(),
//               MenuItem(
//                 title: "Главная",
//                 press: () {
//                   setState(() {
//                     page_index = 0;
//                   });
//                 },
//               ),
//               MenuItem(
//                 title: "Заявки",
//                 press: () {
//                   setState(() {
//                     page_index = 1;
//                   });
//
//                 },
//               ),
//               MenuItem(
//                 title: "Вакансии",
//                 press: () {
//                   setState(() {
//                     page_index = 2;
//                   });
//                 },
//               ),
//               MenuItem(
//                 title: "Кандидаты",
//                 press: () {
//                   setState(() {
//                     page_index = 3;
//                   });
//                 },
//               ),
//               MenuItem(
//                 title: "Аккаунт",
//                 press: () {
//                   setState(() {
//                     page_index = 4;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }
//
// _body(int selectedIndex, Size size) {
//   switch (selectedIndex) {
//     case 0:
//       return Homebody(size);
//       break;
//     case 1:
//       return Requests();
//       break;
//     case 2:
//       return Vacancys();
//       break;
//     case 3:
//       return Candidates();
//       break;
//     case 4:
//       return Account();
//       break;
//     default:
//       return Container();
//   }
// }
//
// Widget Homebody(Size size) {
//   return Container(
//     height: size.height,
//     // it will take full width
//     width: size.width,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage("assets/images/bg2.png"),
//         fit: BoxFit.cover,
//       ),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         //CustomAppBar(),
//         Spacer(),
//         // It will cover 1/3 of free spaces
//         Body(),
//         Spacer(
//           flex: 2,
//         ),
//         // it will cover 2/3 of free spaces
//       ],
//     ),
//   );
// }

import 'package:flutter/material.dart';
import '../../constants.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/recent_work/recent_work_section.dart';
import 'sections/service/service_section.dart';
import 'sections/topSection/logo_blur_box.dart';
import 'sections/topSection/person_pic.dart';
import 'package:stinger_crm_web/Screens/Home/requests/requests.dart';
import 'sections/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  int hoverIndex = 0;

  List<String> menuItems = [
    "Главная",
    "Заявки",
    "Вакансии",
    "Соискатели",
    "Аккаунт",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(maxHeight: 700, minHeight: 700),
              width: double.infinity,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.only(top: kDefaultPadding),
                width: 1200,
                child: Stack(
                  children: [
                    LogoAndBlurBox(size: size),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: PersonPic(),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
                        constraints: BoxConstraints(maxWidth: 1110),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          boxShadow: [kDefaultShadow],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            menuItems.length,
                                (index) => buildMenuItem(index),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            _body(selectedIndex),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }

  _body(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return Column(
          children: [
            Requests(),
            ContactSection()
          ],
        );
        break;
      case 1:
        return FeedbackSection();
        break;
      case 2:
        return ServiceSection();
        break;
      case 3:
        return RecentWorkSection();
        break;
      case 4:
        return Container();
        break;
      default:
        return Container();
    }
  }

  Widget buildMenuItem(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    onHover: (value) {
      setState(() {
        value ? hoverIndex = index : hoverIndex = selectedIndex;
      });
    },
    child: Container(
      constraints: BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            menuItems[index],
            style: TextStyle(fontSize: 20, color: kTextColor),
          ),
          // Hover
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom:
            selectedIndex != index && hoverIndex == index ? -20 : -32,
            child: Image.asset("assets/images/Hover.png"),
          ),
          // Select
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -2 : -32,
            child: Image.asset("assets/images/Hover.png"),
          ),
        ],
      ),
    ),
  );
}