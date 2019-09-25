import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:blood_bank/Screens/forgotPassword.dart';
import 'package:blood_bank/Screens/Signed/home.dart';
//import 'package:blood_bank/Screens/welcome.dart';
//import 'package:blood_bank/Screens/signup.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Brightness _brightness;

  @override
  Widget build(BuildContext context) {
    _brightness = Brightness.light;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Bank',
      theme: ThemeData(
        //primarySwatch: Colors.red,
        fontFamily: 'Samsung',
        brightness: _brightness,
        primaryColor: Color.fromRGBO(237, 28, 36, 1),
        cursorColor: Color.fromRGBO(237, 28, 36, 1),
        accentColor: Color.fromRGBO(237, 28, 36, 1),
      ),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {

    return Home();
  }
}