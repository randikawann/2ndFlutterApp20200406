import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  Widget get topbar => Container(
    height: 100.0,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/travel/bannertop1.png'),
          fit: BoxFit.fill,
        ),
//        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30.0, top: 30.0),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("7", style: TextStyle(fontSize: 15.0, color: Colors.black, backgroundColor: Colors.white)  ),
                    SizedBox(width: 9.0,),
                    Text("day trip", style: TextStyle(fontSize: 14.0, color: Colors.white,),),
                  ],
                ),
                Text("IN ROUTE", style: TextStyle(fontSize: 13.0, color: Color(0xffFFDD00),),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30.0, top: 30.0),
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

  Widget get middle => Expanded(
    child: Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: const Color(0xffF9F9F9),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[ // #F9F9F9  color: Color.hex("#183451"),
                      Text("Alex", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(width: 9.0,),
                      Text("Very Experienced", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Color(0xffFFDD00), size: 18.0,),
                          Icon(Icons.star, color: Color(0xffFFDD00), size: 18.0,),
                          Icon(Icons.star, color: Color(0xffFFDD00), size: 18.0,),
                          Icon(Icons.star, color: Color(0xffFFDD00), size: 18.0,)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30.0),
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("assets/user.png",),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:30.0, right: 30.0, top: 20.0, bottom: 20.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("50,000ml", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text("Backpacker", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.airplanemode_active, size: 35.0,),
                      SizedBox(width: 12.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Next Trip", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),),
                          Text("Moscow", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Edit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),),
                      color: Color(0xff395AFF),
                      elevation: 0.0,
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
//                          side: BorderSide(color: Colors.white)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left:30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Travel photos", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 8.0,),
                  Text("Photos of her from previoud trips", style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                  SizedBox(height: 20.0,),
                  Expanded(
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CorossolImage(),
                          CorossolImage(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget get downbar => Container(
    margin: EdgeInsets.only(left: 30.0, right: 30.0),
    padding: EdgeInsets.only(top: 20.0),
    height: 200.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Previous Trip", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.black)),
        SizedBox(height: 8.0,),
        Text("Trips she has taken in the past 12 months", style: TextStyle(fontSize: 14.0, color: Colors.grey)),
        SizedBox(height: 30.0,),
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                BottomImage(),
//                BottomImage(),
              ],
            )
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 17.0),
        child: Column(
          children: <Widget>[
            topbar,
            middle,
            downbar
          ],
        ),
      ),
    );
  }
}


  class CorossolImage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        width: 150.0,
//        height: 200.0,
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(left: 14.0, bottom: 16.0),
          child: Text("Bali", style: TextStyle(fontSize: 14.0, color: Colors.white),),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/travel/travelphoto1.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      );
    }
  }
  
  class BottomImage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        width: 300.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage('assets/travel/bannertop1.png'),
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
                      Text("7", style: TextStyle(fontSize: 15.0, color: Colors.black, backgroundColor: Colors.white)  ),
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
      );
    }
  }
  