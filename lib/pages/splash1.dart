import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 250.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "backpack ",
                    style: TextStyle(
                      color: Color(0xffFFD500),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10.0,),
//                  Icon(Icons.album, color: Colors.blue, size: 25.0,),
                  Text(
                    "Travel with people. Make new Friends",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 250.0,),
              Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(left: 150.0, right: 150.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Text(
                      "Sign Up", style: TextStyle(
                      color: Colors.blue,
                    ),
                    ),
                    onPressed: (){},
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0,),
                SizedBox(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.only(left: 150.0, right: 150.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.white)
                    ),
                    child: Text(
                      "Log In", style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    onPressed: (){},
                    color: Colors.blue,
                  ),
                ),
              ],
              ),
            ],
          )
        ),
    );
  }
}
