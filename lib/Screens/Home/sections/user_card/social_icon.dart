import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String icon;
  SocialIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 10),
            blurRadius: 10
          )
        ]
      ),
      child: Center(
        child: Image.asset(
          icon,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}