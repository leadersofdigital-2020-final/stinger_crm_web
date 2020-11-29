import 'package:flutter/material.dart';
import '../../../../components/section_title.dart';
import '../../../../constants.dart';
import '../../../../models/Feedback.dart';
import 'dart:convert' show utf8;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'feedback_card.dart';


class FeedbackSection extends StatelessWidget {
  bool canRequest = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: obtainJson(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              title: "Заявки",
              subTitle: "Открывайте заявки и редактируйте их!",
              color: Color(0xFF00B1FF),
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                feedbacks.length,
                    (index) => FeedbackCard(index: index),
              ),
            ),
          ],
        ),
      );
      }
    );
  }
  Future<List<FeedBack>> obtainJson() async {
    if (canRequest) {
      Map<String, String> headers = {
        'Content-Type': 'application/json; charset=UTF-8',
      };
      final response = await http.get('http://127.0.0.1:8000/vacancy/?format=json',
          headers: headers);

      dynamic jsonObject = convert.jsonDecode(utf8.decode(response.bodyBytes));

      jsonObject.forEach((elem) {
        feedbacks += [FeedBack.fromJson(elem)];
      });
      canRequest = false;
    }
  }
}