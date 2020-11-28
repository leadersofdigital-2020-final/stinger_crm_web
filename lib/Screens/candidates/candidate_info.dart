import 'package:flutter/material.dart';
import 'package:stinger_crm_web/size_config.dart';

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