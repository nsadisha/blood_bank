import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  final items =  List<String>.generate(20, (i) => "Test ${i+1}");

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Container(
        width: width,
        height: height*0.91,
        child: RefreshIndicator(
          onRefresh: refreshNotifications,
          child: ListView.builder(
            //should be a ListView.Builder
            itemCount: items.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0),
            itemBuilder: (context,index){
              return Dismissible(
                key: Key(index.toString()),
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
                  //delete the notification
                  print("Item ${index+1} removed from the list");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        child: Text("${index+1}",textScaleFactor: 1.5,),
                      ),
                      dense: true,
                      title: Text(items[index]),
                      subtitle: Text("Hello this is a text ${index+1}.",maxLines: 1),
                      onTap: (){
                        //Full notification should displayed.
                        print("item ${index+1} tapped.");
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,right: 5,top: 0,bottom: 0),
                      child: Divider(
                        thickness: 1,
                        color: Color.fromRGBO(237, 28, 36, 0.3)
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
    );
  }
}

Future<Null> refreshNotifications(){
  //refresh notifications.
  return null;
}
