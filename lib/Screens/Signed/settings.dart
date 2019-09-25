import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          textScaleFactor: tScale,
          style: TextStyle(
              fontSize: width*0.08,
              color: Color.fromRGBO(237, 28, 36, 1)
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: width,
        height: height*0.91,
        child: Center(child: Text("Settings"),),
      ),
    );
  }
}
