import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Container(
      width: width,
      height: height*0.91,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(color: Colors.grey,child: Container(
            width: width*0.9,
            height: height*0.07,
            child: Text("Hello"),
          ),),
        ],
      ),

    );
  }
}