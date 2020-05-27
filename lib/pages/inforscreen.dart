import 'package:flutter/material.dart';
import 'package:flutter_app_second/widgets/myheader.dart';
import 'package:flutter_app_second/constant.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyHeader(
            image: "assets/icons/coronadr.svg",
            texttop: "Get to know",
            textbottom: "About Covid-19",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Symptoms",
                  style: kTitleTextstyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
