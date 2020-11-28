import 'package:flutter/material.dart';

import '../size_config.dart';
import 'search_fields_candidates.dart';

class HomeHeaderC extends StatelessWidget {
  const HomeHeaderC({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/bg2.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Кандидаты",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1),
              ),
              //SizedBox(height: getProportionateScreenHeight(20)),
              
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(50)),
          Positioned(
            bottom: getProportionateScreenWidth(-10),
            child: SearchField(),
          )
        ],
      ),
    );
  }
}