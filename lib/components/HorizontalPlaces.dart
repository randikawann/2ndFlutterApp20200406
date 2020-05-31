import 'package:flutter/material.dart';

class HorizontalPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PlaceCard(day: "7", image: "bannerbot1",),
          PlaceCard(day: "10", image: "bannerbot2",)
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {

  String day;
  String image;

  PlaceCard({this.day, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/travel/$image.png'),
            fit: BoxFit.fill,
          ),
//        borderRadius: BorderRadius.circular(5.0),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("$day", style: TextStyle(fontSize: 15.0, color: Colors.black, backgroundColor: Colors.white)  ),
                      SizedBox(width: 5.0,),
                      Text("day trip", style: TextStyle(fontSize: 14.0, color: Colors.white,),),
                    ],
                  ),
//                  Text("IN ROUTE", style: TextStyle(fontSize: 14.0, color: Colors.amber,),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, top: 20.0),
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Wed, 4 NOV", style: TextStyle(fontSize: 14.0, color: Colors.white,),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.flight_takeoff, color: Colors.white,),
                      Text(" OSLO ", style: TextStyle(fontSize: 14.0, color: Colors.white,),),
                      Icon(Icons.brightness_1, size: 10.0, color: Colors.white,),
                      Icon(Icons.brightness_1, size: 10.0, color: Colors.white,),
                      Icon(Icons.brightness_1, size: 10.0, color: Colors.white,),

                      Text(" JAPAN", style: TextStyle(fontSize: 14.0, color: Colors.white,),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


