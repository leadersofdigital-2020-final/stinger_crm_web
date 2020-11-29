import 'package:flutter/material.dart';
import 'package:stinger_crm_web/Screens/candidates/video_player.dart';
import 'package:stinger_crm_web/models/user.dart';
import '../../../../size_config.dart';
import 'main_button.dart';
import 'social_icon.dart';

class LargeScreen extends StatefulWidget {
  final int index;

  const LargeScreen({Key key, this.index}) : super(key: key);
  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  double font_size = 6;
  bool isVideo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
            //height: getProportionateScreenWidth(1000),
            decoration: BoxDecoration(
              color: Color(0xFFF7E8FF).withOpacity(0.3),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/recent_work_bg.png"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(120),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                                Icons.arrow_back_ios
                            ),
                          ),
                          Text(topTravelers[widget.index].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF7C8FB5),
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 550,
                            ),
                            child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Имя: " +
                                              topTravelers[widget.index].name.toString(),
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text("Номер телефона:",
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text(topTravelers[widget.index].phone.toString(),
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text("Вакансия:",
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text(topTravelers[widget.index].profession.toString(),
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text(
                                          "Этап: " +
                                              topTravelers[widget.index].stage.toString() +
                                              "/5",
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                      Text(
                                          "Рекомендованность: " +
                                              topTravelers[widget.index].rating.toString(),
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(
                                                  font_size))),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              MainButton(
                                text: "ПОЗВОНИТЬ",
                                colors: [
                                  Color(0xff23bcba),
                                  Color(0xff45e994)
                                ],
                                isOnLight: false,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              MainButton(
                                text: "Смотреть видео",
                                colors: [
                                  Colors.white,
                                  Colors.white
                                ],
                                isOnLight: true,
                                onPress: (){
                                  setState(() {
                                    isVideo=!isVideo;
                                  });
                                },
                              )
                            ],
                          ),
                          
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              SocialIcon(
                                  icon: "assets/icons/facebook.png"
                              ),
                              SocialIcon(
                                  icon: "assets/icons/google-plus.png"
                              ),
                              SocialIcon(
                                  icon: "assets/icons/twitter.png"
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                      Image.asset(topTravelers[widget.index].second_image != null ? topTravelers[widget.index].second_image :topTravelers[widget.index].image  ),
                    ],
                  ),
                  isVideo ? VideoApp(video_link:topTravelers[widget.index].video):Container(),
                ],
              ),
            )
        ),
      ),
    );
  }
}