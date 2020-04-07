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


//Special things from branch //02carousel
/* corouel pro -> https://pub.dev/packages/carousel_pro#-installing-tab-
 * carousel_pro 1.0.0 -> carousel_pro: ^1.0.0
 */
