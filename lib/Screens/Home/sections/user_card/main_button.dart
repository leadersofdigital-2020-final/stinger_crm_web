import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final List<Color> colors;
  final String text;
  final bool isOnLight;
  final VoidCallback onPress;
  MainButton({this.colors, this.text, this.isOnLight, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
        width: 180,
          height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF6078ea).withOpacity(.3),
              offset: Offset(0, 8),
              blurRadius: 8
            )
          ]
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isOnLight
              ? Icon(
                Icons.play_circle_filled,
                color: Color(0xffb0bfde),
              )
                  : Container(),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: isOnLight ? Color(0xff7c8fb5) : Colors.white,
                  fontFamily: "Quicksand",
                  letterSpacing: 1
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}