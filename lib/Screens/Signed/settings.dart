import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:blood_bank/Screens/Signed/Settings/General.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Container(
      width: width,
      height: height*0.91,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: width*0.04,),
                CircleAvatar(
                  backgroundColor: Colors.redAccent,radius: 30,
                  child: Icon(Icons.person_outline,size: 40,),
                ),
                SizedBox(width: width*0.03,),
                Expanded(child: Text("Sadisha Nimsara",style: TextStyle(fontSize: width*0.06),textScaleFactor: tScale,))
              ],
            ),
            SizedBox(height: height*0.02,),
            Divider(thickness: 1.3,),
            SizedBox(height: height*0.02,),
            ListTile(
              dense: true,
              leading: CircleAvatar(backgroundColor: Colors.transparent,child: Icon(
                Icons.vpn_key,
                size: 22,
                //if brightness is dark, icon color is black54; else color is grey
                color: Theme.of(context).brightness==Brightness.light ? Colors.black54 : Colors.grey,
              )
              ),
              title: Text('Account',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
              subtitle: Text('Privacy, security, change password',style: TextStyle(fontSize: width*0.035),textScaleFactor: tScale,),
              onTap: (){},
            ),
            ListTile(
              dense: true,
              leading: CircleAvatar(backgroundColor: Colors.transparent,child: Icon(
                Icons.notifications_none,
                size: 22,
                color: Theme.of(context).brightness==Brightness.light ? Colors.black54 : Colors.grey,
              )
              ),
              title: Text('Notification',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
              subtitle: Text('Notification sound',style: TextStyle(fontSize: width*0.035),textScaleFactor: tScale,),
              onTap: (){},
            ),
            ListTile(
              //contentPadding: ,
              dense: true,
              leading: CircleAvatar(backgroundColor: Colors.transparent,child: Icon(
                Icons.settings,
                size: 22,
                color: Theme.of(context).brightness==Brightness.light ? Colors.black54 : Colors.grey,
              )
              ),
              title: Text('General',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
              subtitle: Text('Appearance',style: TextStyle(fontSize: width*0.035),textScaleFactor: tScale,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Appearance()));
              }
            ),
            ListTile(
              dense: true,
              leading: CircleAvatar(backgroundColor: Colors.transparent,child: Icon(
                Icons.help_outline,
                size: 22,
                color: Theme.of(context).brightness==Brightness.light ? Colors.black54 : Colors.grey,
              )
              ),
              title: Text('Help',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
              subtitle: Text('FAQ, contact us, privacy policy',style: TextStyle(fontSize: width*0.035),textScaleFactor: tScale,),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}
