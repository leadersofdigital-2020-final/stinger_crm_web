import 'package:flutter/material.dart';
import '../../widgets/section_title.dart';
import '../../models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../constants.dart';
import '../../size_config.dart';

class TopTravelers extends StatefulWidget {
  const TopTravelers({Key key, int state}) : super(key: key);

  @override
  _TopTravelersState createState() => _TopTravelersState();
}

class _TopTravelersState extends State<TopTravelers> {
  int page = -1;
  double font_size = 8;
  bool canResponse = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: obtainJson(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      print(obtainJson());
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
            child: page == -1
                ? Wrap(                  
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: getProportionateScreenWidth(14),
                      children: [
                        ...List.generate(
                          topTravelers.length,
                          //topTravelers.length<4 ? topTravelers.length : 4,
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
                
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UserCard(
                            user: topTravelers[page],
                            press: () {
                              setState(() {
                                page = -1;
                              });
                            },
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Имя: " +
                                        topTravelers[page].name.toString(),
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text("Номер телефона:",
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text(topTravelers[page].cell_number.toString(),
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text("Вакансия:",
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text(topTravelers[page].vac.toString(),
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text(
                                    "Этап: " +
                                        topTravelers[page].stage.toString() +
                                        "/5",
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                                Text(
                                    "Рекомендованность: " +
                                        topTravelers[page].rating.toString(),
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                            font_size))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
          )
        ],
      );
    });

    
  }
  Future<List<User>> obtainJson() async {
    if(canResponse){
      final response = await http.get('http://127.0.0.1:8000/api/?format=json');
      dynamic jsonObject = convert.jsonDecode(response.body);
      //var jsonResponse = convert.jsonDecode(response.body);
      final convertedJsonObject = jsonObject.cast<Map<String, dynamic>>();
      topTravelers +=
          convertedJsonObject.map<User>((json) => User.fromJson(json)).toList();
      print(topTravelers[0]);
      canResponse=false;
      }

      //return list;
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
