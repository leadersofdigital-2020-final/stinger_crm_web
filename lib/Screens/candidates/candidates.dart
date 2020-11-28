import 'package:flutter/material.dart';
import 'package:stinger_crm_web/Screens/Home/Components/app_bar.dart';
import 'package:stinger_crm_web/Screens/Home/requests/top_travellers.dart';
import 'package:stinger_crm_web/size_config.dart';

import 'home_header_candidates.dart';
class Candidates extends StatefulWidget {
  @override
  _CandidatesState createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  @override
  Widget build(BuildContext context) { 
    SizeConfig().init(context);
    return Scaffold(
    extendBodyBehindAppBar: true,
    body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              HomeHeaderC(),
              VerticalSpacing(),
              TopTravelers(),
              VerticalSpacing(),
              
            ],
          ),
        ),
      ),
  );
}
}
class CandidateInfo extends StatefulWidget {
  @override
  _CandidateInfoState createState() => _CandidateInfoState();
}

class _CandidateInfoState extends State<CandidateInfo> {

  @override
  Widget build(BuildContext context) { 
    SizeConfig().init(context);
    return Scaffold(
    extendBodyBehindAppBar: true,
    body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              
              
            ],
          ),
        ),
      ),
  );
}
}