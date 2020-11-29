import 'package:flutter/material.dart';
import 'package:stinger_crm_web/models/user.dart';

import '../user_card/user_card.dart';
import '../../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(topTravelers[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(topTravelers[widget.index].profession.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      topTravelers[widget.index].name,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LargeScreen(index: widget.index);
                          },
                        ),
                      ),
                      child: Text(
                        "Посмотреть подробнее",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}