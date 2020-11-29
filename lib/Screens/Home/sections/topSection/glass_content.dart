import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
          BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Stinger представляет",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black),
              ),
              Text(
                "HR вок",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              Text(
                "Свайпни HR вправо!",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}