import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 200.0),
        child: Column(
          children: <Widget>[
            Text(
              "backpack",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.0,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 200.0,),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0
              ),
            ),
            SizedBox(height: 20.0,),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage("assets/user.png"),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "Mat",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0,),
            Icon(Icons.fingerprint, size: 30.0,),
            SizedBox(height: 40.0,),
            Text(
              "Not You ?",
              style: TextStyle(
                color: Colors.black38
              ),
            )
          ],
        ),
      ),
    );
  }
}
