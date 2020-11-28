import 'package:flutter/material.dart';
import 'package:stinger_crm_web/Screens/Home/Components/app_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(
        children: [
          IconButton(
            icon: Icon(Icons.accessibility_new_sharp),
            onPressed: () async {
              dynamic response;
              //await http.post('{"title": "as", "description": "aa", "done": true}');
              response = await http.get('http://127.0.0.1:8000/api/?format=json');

              var jsonResponse = convert.jsonDecode(response.body);
              var id = jsonResponse;
              print('$id.');

              print('${response.statusCode}.');

              //print(response.body);
            },
          )
        ],
      ));
}
