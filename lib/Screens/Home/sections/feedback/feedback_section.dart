import 'package:flutter/material.dart';
import '../../../../components/section_title.dart';
import '../../../../constants.dart';
import '../../../../models/Feedback.dart';

import 'feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}