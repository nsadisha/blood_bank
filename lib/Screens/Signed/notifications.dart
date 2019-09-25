import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
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
        //color: Colors.redAccent,
        width: width,
        height: height*0.91,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Card(
              child: ListTile(
                onTap: (){print('hello');},
                title: Text("Test 1"),
                subtitle: Text("Hello this is a text"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Test 2"),
                subtitle: Text("Hello this is a text"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Test 3"),
                subtitle: Text("Hello this is a text"),
              ),
            ),
          ],
        )
      ),
    );
  }
}
