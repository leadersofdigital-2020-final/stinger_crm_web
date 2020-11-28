import 'package:flutter/material.dart';
import '../../../widgets/section_title.dart';
import '../../../models/user.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class TopTravelers extends StatefulWidget{
  const TopTravelers({
    Key key,
    int state
  }) : super(key: key);

  @override
  _TopTravelersState createState() => _TopTravelersState();
}

class _TopTravelersState extends State<TopTravelers> {
  int page = -1;
  double font_size = 8;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          //SectionTitle(title: "", press: () {}),
          VerticalSpacing(of: 20),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding),
            ),
            padding: EdgeInsets.all(getProportionateScreenWidth(14)),
            // height: getProportionateScreenWidth(143),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [kDefualtShadow],
            ),
            child: page==-1 ? 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  topTravelers.length,
                      (index) => UserCard(
                    user: topTravelers[index],
                    press: () {
                      setState(() {
                        page = index;
                      });
                    },
                  ),
                ),
              ],
            )
            : 
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     UserCard(
                        user: topTravelers[page],
                        press: () {
                          setState(() {
                            page=-1;
                          });
                        },
                      ),
                      Column(
                        children: [
                          Text("Имя:", style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text(topTravelers[page].name.toString(), style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text("Номер телефона:", style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text(topTravelers[page].cell_number.toString(), style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text("Вакансия:", style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text(topTravelers[page].vac.toString(), style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          Text("Этап: "+topTravelers[page].stage.toString(), style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),                      
                          Text("Рекомендованность: "+topTravelers[page].rating.toString(), style: TextStyle(fontSize:getProportionateScreenWidth(font_size))),
                          
                        ],
                      )
                  ],
                ),
                
              ],
            ),
            
          )
        ],
      );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    @required this.user,
    @required this.press,
  }) : super(key: key);

  final User user;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              user.image,
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              fit: BoxFit.cover,
            ),
          ),
          VerticalSpacing(of: 10),
          Text(
            user.name,
            style: TextStyle(fontSize: getProportionateScreenWidth(8)),
          ),
        ],
      ),
    );
  }
}
