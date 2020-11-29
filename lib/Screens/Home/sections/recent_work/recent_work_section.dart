import 'package:flutter/material.dart';
import 'package:stinger_crm_web/models/user.dart';
import '../../../../components/hireme_card.dart';
import '../../../../components/section_title.dart';
import '../../../../constants.dart';
import 'dart:convert' show utf8;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'recent_work_card.dart';



class RecentWorkSection extends StatelessWidget {
  bool canRequest = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: obtainJson(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        margin: EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        // just for demo
        // height: 600,
        decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/recent_work_bg.png"),
          ),
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -80),
              child: HireMeCard(),
            ),
            SectionTitle(
              title: "Кандидаты",
              subTitle: "Люди, которые недавно разговаривали с телеграм ботом",
              color: Color(0xFFFFB100),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            SizedBox(
              width: 1110,
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(
                  topTravelers.length,
                  (index) => RecentWorkCard(index: index, press: () {}),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      );
    });
  }

  Future<List<User>> obtainJson() async {
    if (canRequest) {
      Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
      };
      final response = await http.get('http://127.0.0.1:8000/api/?format=json',
          headers: headers);

      dynamic jsonObject = convert.jsonDecode(utf8.decode(response.bodyBytes));

      jsonObject.forEach((elem) {
        topTravelers += [User.fromJson(elem)];
      });
      canRequest = false;
    }
  }
}
