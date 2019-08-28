import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: width*0.3),
              width: width*0.6,
              height: width*0.6,
              child: Image.asset('images/welcome.png')
          ),
          Container(
            margin: EdgeInsets.only(top: width*0.4),
            child: Text(
              "Blood Bank",
              style: TextStyle(
                  fontSize: width*0.13,
                  color: Color.fromRGBO(237, 28, 36, 1),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Samsung',
                  decoration: TextDecoration.none
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: width*0.01),
            child: Text(
              "Donate Blood, Save Lives.",
              style: TextStyle(
                  fontSize: width*0.065,
                  fontFamily: 'Samsung',
                  fontWeight: FontWeight.w100,
                  color: Color.fromRGBO(237, 28, 36, 0.9),
                  decoration: TextDecoration.none
              )
            ),
          ),

        ],
      ),
    );
  }
}
