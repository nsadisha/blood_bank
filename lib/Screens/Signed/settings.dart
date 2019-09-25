import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: width*0.04,),
                CircleAvatar(
                  backgroundColor: Colors.redAccent,radius: 35,
                  child: Icon(Icons.person_outline,size: 50,),
                ),
                SizedBox(width: width*0.03,),
                Expanded(child: Text("User Name",style: TextStyle(fontSize: width*0.1),textScaleFactor: tScale,))
              ],
            ),
            SizedBox(height: height*0.035,),
            Divider(thickness: 1.3,),
            SizedBox(height: height*0.035,),
            ListTile(
              //contentPadding: ,
              leading: Icon(Icons.vpn_key,size: 25,),
              title: Text('Account',style: TextStyle(fontSize: width*0.07),textScaleFactor: tScale,),
              subtitle: Text('Privacy, security, change password',style: TextStyle(fontSize: width*0.04),textScaleFactor: tScale,),
              onTap: (){},
            ),
            ListTile(
              //contentPadding: ,
              leading: Icon(Icons.notifications_none,size: 25,),
              title: Text('Notification',style: TextStyle(fontSize: width*0.07),textScaleFactor: tScale,),
              subtitle: Text('Notification sound',style: TextStyle(fontSize: width*0.04),textScaleFactor: tScale,),
              onTap: (){},
            ),
            ListTile(
              //contentPadding: ,
              leading: Icon(Icons.settings,size: 25,),
              title: Text('General',style: TextStyle(fontSize: width*0.07),textScaleFactor: tScale,),
              subtitle: Text('Appearance',style: TextStyle(fontSize: width*0.04),textScaleFactor: tScale,),
              onTap: (){},
            ),
            ListTile(
              //contentPadding: ,
              leading: Icon(Icons.help_outline,size: 25,),
              title: Text('Help',style: TextStyle(fontSize: width*0.07),textScaleFactor: tScale,),
              subtitle: Text('FAQ, contact us, privacy policy',style: TextStyle(fontSize: width*0.04),textScaleFactor: tScale,),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
