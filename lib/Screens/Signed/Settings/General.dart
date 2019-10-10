import 'package:flutter/material.dart';

class Appearance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appearance',
          textScaleFactor: tScale,
          style: TextStyle(
              fontSize: width*0.08,
              color: Color.fromRGBO(237, 28, 36, 1)
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Theme.of(context).brightness==Brightness.light ? Colors.black : Colors.grey,),
            onPressed: (){Navigator.pop(context);}
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          width: width,
          height: height,
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Dark Theme',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
                trailing: Switch(
                    value: Theme.of(context).brightness==Brightness.dark ? true : false,
                    onChanged: (val){
                      if(val==true){
                        //turn on dark theme
                      }else{
                        //turn on light theme
                      }
                    }),
              )
            ],
          )
      ),
    );
  }
}

