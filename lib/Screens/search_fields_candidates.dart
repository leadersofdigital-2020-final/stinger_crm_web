import 'package:flutter/material.dart';

import '../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313),
      height: getProportionateScreenWidth(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(7),
            color: Color(0xFF464A7E),
          ),
          suffixIcon: Icon(Icons.search, size: getProportionateScreenWidth(7),),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenWidth(6),
          ),
        ),
      ),
    );
  }
}