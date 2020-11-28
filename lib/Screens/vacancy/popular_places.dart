import 'package:flutter/material.dart';
import '../../widgets/place_card.dart';
import '../../widgets/section_title.dart';
import '../../models/travel_spot.dart';
import 'events_screen.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PopularPlacesV extends StatelessWidget {
  const PopularPlacesV({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Библиотека вакансий",
          press: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EventsScreenV()),
          ),
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                    (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding)),
                  child: PlaceCard(
                    travelSport: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}