import 'package:flutter/material.dart';
import 'package:blood_bank/forgotPassword.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        child: Container(
          width: width,
          height: height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: height*0.1,top: height*0.1),
                  width: width*0.45,
                  height: width*0.45,
                  child: Image.asset("images/welcome.png")
              ),
              Container(
                width: width*0.8,
                margin: EdgeInsets.only(bottom: height*0.01),
                child: TextFormField(
                  autocorrect: false,
                  style: TextStyle(fontSize: width*0.05),
                  textInputAction: TextInputAction.done,
                  validator: (value){
                    if(value.isEmpty){
                      return "Enter Username";
                    }else{return null;}
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    hintText: "Username",
                    labelText: "Username",
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Container(
                width: width*0.8,
                margin: EdgeInsets.only(bottom: height*0.02),
                child: TextFormField(
                  style: TextStyle(fontSize: width*0.05),
                  obscureText: true,
                  autocorrect: false,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      labelText: "Password",
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: height*0.05),
                  padding: EdgeInsets.only(left: width*0.53),
                  child: InkWell(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: Color.fromRGBO(237, 28, 36, 1),
                          fontSize: width*0.04,
                      )
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                    },
                  )
              ),
              Container(
                padding: EdgeInsets.all(0),
                width: width*0.8,
                height: height*0.067,
                child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: width*0.08,
                        color: Colors.white,
                    )
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Color.fromRGBO(237, 28, 36, 1),
                  elevation: 0,
                  highlightElevation:0,
                  onPressed: (){

                  },
                ),
              ),
              Center(
                child: Container(
                    //width: width*0.6,
                    margin: EdgeInsets.only(top: height*0.12,bottom: height*0.02),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't you have an account? ", style: TextStyle(fontSize: width*0.04)),
                          Container(
                              child: InkWell(
                                child: Text("Sign up",style: TextStyle(color: Color.fromRGBO(237, 28, 36, 1),fontSize: width*0.04),),
                                onTap: (){},
                              )
                          ),
                        ],
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}