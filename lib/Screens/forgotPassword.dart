import 'package:flutter/material.dart';
import 'package:blood_bank/Screens/signup.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double tScale = 0.65+(MediaQuery.of(context).textScaleFactor)/4.5;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                width: width,
                height:height*0.13,
                padding: EdgeInsets.only(right: width*0.59,left: width*0.02,top: height*0.04),
                child: InkWell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,size: width*0.055,color: Color.fromRGBO(237, 28, 36, 1),),
                        Text(" Sign in",style:TextStyle(fontSize: width*0.07,color: Color.fromRGBO(237, 28, 36, 1)),textScaleFactor: tScale,)
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                )
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(0),
                child: Container(
                    width: width,
                    height: height*0.87,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: height*0.15,
                          margin: EdgeInsets.only(top: height*0.06),
                          child: Icon(Icons.lock,size: width*0.25,color: Color.fromRGBO(237, 28, 36, 1),),
                        ),
                        Container(
                          height: height*0.08,
                          margin: EdgeInsets.only(top: height*0.02),
                          child: Text("Forgot password?",style: TextStyle(fontSize: width*0.1,color: Color.fromRGBO(237, 28, 36, 1)),textScaleFactor: tScale,),
                        ),
                        Container(
                          width: width*0.75,
                          height: height*0.11,
                          margin: EdgeInsets.only(top: height*0.00),
                          child: Text(
                            "We just need your registered email address to send you password reset.",
                            style: TextStyle(fontSize: width*0.045,color: Color.fromRGBO(237, 28, 36, 0.7)),textAlign: TextAlign.center,
                            textScaleFactor: tScale
                          ),
                        ),
                        Container(
                          width: width*0.9,
                          height: height*0.1,
                          margin: EdgeInsets.only(top: height*0.04),
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            //style: TextStyle(fontSize: width*0.05),
                            decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                contentPadding: EdgeInsets.all(width*0.06),
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                            ),
                          ),
                        ),
                        Container(
                          width: width*0.9,
                          height: height*0.09,
                          margin: EdgeInsets.only(top: height*0.05),
                          child: RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            color: Color.fromRGBO(237, 28, 36, 1),
                            padding: EdgeInsets.only(top: height*0.015,bottom: height*0.015,right: width*0.1,left: width*0.1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text("Reset Password",style: TextStyle(fontSize: width*0.08,color: Colors.white,),textScaleFactor: tScale,),
                            onPressed: (){},
                          ),
                        ),
                        Center(
                          child: Container(
                              height: height*0.1,
                              margin: EdgeInsets.only(top: height*0.07),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Don't you have an account? ", style: TextStyle(fontSize: width*0.04),textScaleFactor: tScale),
                                    Container(
                                        child: InkWell(
                                          child: Text("Sign up",style: TextStyle(color: Color.fromRGBO(237, 28, 36, 1),fontSize: width*0.04),textScaleFactor: tScale),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                                          },
                                        )
                                    ),
                                  ],
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
