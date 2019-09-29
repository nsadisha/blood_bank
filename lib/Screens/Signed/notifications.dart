import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
        width: width,
        height: height*0.91,
        child: RefreshIndicator(
          onRefresh: refreshNotifications,
          child: ListView(
            //should be a ListView.Builder
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0),
            children: <Widget>[
              Dismissible(
                key: Key(null),
                secondaryBackground: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Delete  ',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                      Icon(Icons.delete_outline,color: Colors.white),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.delete_outline,color: Colors.white),
                      Text('  Delete',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                onDismissed: (direction){
                  //delete the nitification
                },
                child: Card(
                  child: ListTile(
                    title: Text("Test"),
                    subtitle: Text("Hello this is a text",maxLines: 1),
                    onTap: (){
                      //Full notification should displayed.
                    },
                  ),
                ),
              ),
              Dismissible(
                key: Key(null),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.delete_outline,color: Colors.white),
                      Text('  Delete',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Delete  ',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                      Icon(Icons.delete_outline,color: Colors.white),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                onDismissed: (direction){
                  print(direction);
                },
                child: Card(
                  child: ListTile(
                    title: Text("Test"),
                    subtitle: Text("Hello this is a text",maxLines: 1),
                    onTap: (){

                    },
                  ),
                ),
              ),
              Dismissible(
                key: Key(null),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.delete_outline,color: Colors.white),
                      Text('  Delete',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                secondaryBackground: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Delete  ',style: TextStyle(color: Colors.white,fontSize: 15),textScaleFactor: tScale,),
                      Icon(Icons.delete_outline,color: Colors.white),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                onDismissed: (direction){
                  print(direction);
                },
                child: Card(
                  child: ListTile(
                    title: Text("Test"),
                    subtitle: Text("Hello this is a text",maxLines: 1),
                    onTap: (){

                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

Future<Null> refreshNotifications(){
  //refresh notifications.
  return null;
}
