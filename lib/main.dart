import 'package:flutter/material.dart';
import 'package:flutter_app_second/pages/profile.dart';
import 'pages/home.dart';
import 'pages/splash1.dart';
import 'pages/splash2.dart';
import 'pages/guide1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Profile(),
      '/home': (context) => HomePage(),

    },
  ));
}
