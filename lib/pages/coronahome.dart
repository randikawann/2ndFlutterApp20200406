import 'package:flutter/material.dart';




class CoronaHome extends StatefulWidget {
  @override
  _CoronaHomeState createState() => _CoronaHomeState();
}

class _CoronaHomeState extends State<CoronaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covoid 19'),
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
