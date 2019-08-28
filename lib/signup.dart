import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String date = "DOB";

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
              height: height*0.13,
              padding: EdgeInsets.only(right: width*0.8,top: height*0.04),
              child: InkWell(
                child: Container(
                  color: Colors.white,
                  child: Icon(Icons.arrow_back_ios, size: width*0.055,color: Color.fromRGBO(237, 28, 36, 1)),
                ),
                onTap: (){},
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: height*0.02),
                  width: width,
                  height: height*0.87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.only(bottom: height*0.01),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "First Name",
                                    hintText: "First Name",
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              margin: EdgeInsets.only(bottom: height*0.01),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "Last Name",
                                    hintText: "Last Name",
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.01),
                        width: width*0.9,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: width*0.04),
                          maxLength: 12,
                          decoration: InputDecoration(
                              labelText: "NIC Number",
                              hintText: "NIC Number",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.01),
                        width: width*0.44,
                        child: FlatButton(
                            onPressed: (){
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(1965, 1, 1),
                                  maxTime: DateTime(2019, 12, 31),
                                  onConfirm: (dob){
                                    setState(() {
                                      date=dob.year.toString()+"/"+dob.month.toString()+"/"+dob.day.toString();
                                      print(date);
                                    });
                                  },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.en
                              );
                            },
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Text("$date")
                        ),
                      ),
                      Text("$date")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
