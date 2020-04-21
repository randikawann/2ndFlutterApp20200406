import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/home': (context) => HomePage(),

    },
  ));
}

//07corona branch
/*flutter svg: flutter_svg: ^0.17.4  -> https://pub.dev/packages/flutter_svg#-installing-tab-
*
*
* */
