import 'package:flutter/material.dart';

//import pages
import 'package:flutter_app_second/pages/coronahome.dart';
import 'package:flutter_app_second/pages/inforscreen.dart';

import 'package:flutter_app_second/constant.dart';

/*
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => CoronaHome(),
//      '/home': (context) => HomePage(),

    },
  ));
}
*/






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid 19",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poplins",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: InfoScreen(),
//      home: HomeScreen(),
    );
  }
}



//07corona branch
/*flutter svg: flutter_svg: ^0.17.4  -> https://pub.dev/packages/flutter_svg#-installing-tab-
*
*
* */
