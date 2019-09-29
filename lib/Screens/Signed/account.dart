import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
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
          onRefresh: refresh,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(radius: 50,backgroundColor: Colors.greenAccent,),
              SizedBox(height: height*0.01,),
              Text('User Name',style: TextStyle(fontSize: width*0.07),textScaleFactor: tScale,textAlign: TextAlign.center,),
              SizedBox(height: height*0.05,),
              Card(
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height*0.09,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 15,),
                          CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Icons.credit_card,color: Color.fromRGBO(237, 28, 36, 1))),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('NIC',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
                              SizedBox(height: 3,),
                              Text('blablabla',style: TextStyle(fontSize: width*0.04,color: Colors.black54),textScaleFactor: tScale,),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height*0.09,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 15,),
                          CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Icons.phone,color: Color.fromRGBO(237, 28, 36, 1))),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Phone',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
                              SizedBox(height: 3,),
                              Text('+940000000',style: TextStyle(fontSize: width*0.04,color: Colors.black54),textScaleFactor: tScale,),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height*0.09,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 15,),
                          CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Icons.email,color: Color.fromRGBO(237, 28, 36, 1))),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Email',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
                              SizedBox(height: 3,),
                              Text('user@gmail.com',style: TextStyle(fontSize: width*0.04,color: Colors.black54),textScaleFactor: tScale,),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height*0.09,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 15,),
                          CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Icons.favorite_border,color: Color.fromRGBO(237, 28, 36, 1))),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Life Points',style: TextStyle(fontSize: width*0.05),textScaleFactor: tScale,),
                              SizedBox(height: 3,),
                              Text('123',style: TextStyle(fontSize: width*0.04,color: Colors.black54),textScaleFactor: tScale,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.04,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                  splashColor: Colors.transparent,
                  padding: EdgeInsets.only(top: 6,bottom: 6,),
                  elevation: 0,
                  highlightElevation: 0,
                  color: Color.fromRGBO(237, 28, 36, 1),
                  child: Text('Edit Info',style: TextStyle(fontSize: width*0.07,color: Colors.white),textScaleFactor: tScale,textAlign: TextAlign.center,),
                  onPressed: (){}
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<Null> refresh(){
  //this returns future data of the persion.
  return null;
}
