import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: height*0.07,bottom: height*0.02),
                padding: EdgeInsets.only(right: width*0.67,left: width*0.02),
                child: InkWell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,size: width*0.055,color: Color.fromRGBO(237, 28, 36, 1),),
                        Text(" Sign in",style:TextStyle(fontSize: width*0.07,color: Color.fromRGBO(237, 28, 36, 1)))
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
                    height: height*0.872,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: height*0.06),
                          child: Icon(Icons.lock,size: width*0.25,color: Color.fromRGBO(237, 28, 36, 1),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.03),
                          child: Text("Forgot password?",style: TextStyle(fontSize: width*0.1,color: Color.fromRGBO(237, 28, 36, 1)),),
                        ),
                        Container(
                          width: width*0.7,
                          margin: EdgeInsets.only(top: height*0.02),
                          child: Text("We just need your registered email address to send you password reset.",style: TextStyle(fontSize: width*0.045,color: Color.fromRGBO(237, 28, 36, 0.7)),textAlign: TextAlign.center,),
                        ),
                        Container(
                          width: width*0.9,
                          margin: EdgeInsets.only(top: height*0.1),
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(fontSize: width*0.05),
                            decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height*0.05),
                          child: RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            color: Color.fromRGBO(237, 28, 36, 1),
                            padding: EdgeInsets.only(top: height*0.02,bottom: height*0.02,right: width*0.22,left: width*0.22),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text("Reset Password",style: TextStyle(fontSize: width*0.08,color: Colors.white,),),
                            onPressed: (){},
                          ),
                        ),
                        Center(
                          child: Container(
                              width: width*0.515,
                              margin: EdgeInsets.only(top: height*0.13),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text("Don't you have an account? ", style: TextStyle(fontSize: width*0.04)),
                                  Container(
                                      child: InkWell(
                                        child: Text("Sign up",style: TextStyle(color: Color.fromRGBO(237, 28, 36, 1),fontSize: width*0.04),),
                                        onTap: (){},
                                      )
                                  ),
                                ],
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
