import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String dropdownValue = 'Male';
  String date = "DOB";

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
              height: height*0.13,
              padding: EdgeInsets.only(right: width*0.8,top: height*0.04),
              child: InkWell(
                child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_back_ios, size: width*0.055,color: Color.fromRGBO(237, 28, 36, 1)),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                height: height*0.87,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: width*0.3,
                        height: width*0.3,
                        alignment: Alignment.center,
                        child: Image.asset('images/welcome.png'),
                      ),
                      Container(
                        width: width*0.8,
                        height: height*0.09,
                        alignment: Alignment.center,
                        child: Text("Sign up",style: TextStyle(fontSize: width*0.13,color: Color.fromRGBO(237, 28, 36, 1)),textScaleFactor: tScale,),
                      ),
                      Container(
                        width: width*0.8,
                        height: height*0.05,
                        alignment: Alignment.center,
                        child: Text("Sign up For Blood Bank In Sri Lanka",style: TextStyle(fontSize: width*0.045,color: Color.fromRGBO(237, 28, 36, 1)),textScaleFactor: tScale,),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.0,top: height*0.05),
                        height: height*0.08,
                        width: width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                //style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "First Name",
                                    hintText: "First Name",
                                    contentPadding: EdgeInsets.all(width*0.04),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                //style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "Last Name",
                                    hintText: "Last Name",
                                    contentPadding: EdgeInsets.all(width*0.04),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: height*0.11,
                        width: width*0.9,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          //style: TextStyle(fontSize: width*0.04),
                          maxLength: 12,
                          decoration: InputDecoration(
                              labelText: "NIC Number",
                              hintText: "NIC Number",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.02),
                        height: height*0.08,
                        width: width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width*0.4,
                              height: height*0.07,
                              decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(5)),
                              child: FlatButton(
                                  onPressed: (){
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime(1965, 1, 1),
                                        maxTime: DateTime(2019, 12, 31),
                                        onConfirm: (dob){
                                          setState(() {
                                            this.date=dob.year.toString()+"-"+dob.month.toString()+"-"+dob.day.toString();
                                            print(date);
                                          });
                                        },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en
                                    );
                                  },
                                  //color: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  child: Text("$date")
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(0),
                                width: width*0.4,
                                height: height*0.07,
                                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(5)),
                                alignment: Alignment.center,
                                child: Text(dropdownValue)
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          //style: TextStyle(fontSize: width*0.04),
                          decoration: InputDecoration(
                              labelText: "Street Address",
                              hintText: "Street Address",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          //style: TextStyle(fontSize: width*0.04),
                          decoration: InputDecoration(
                              labelText: "City",
                              hintText: "City",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.02),
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          //style: TextStyle(fontSize: width*0.04),
                          decoration: InputDecoration(
                              labelText: "Zip/Postal Code",
                              hintText: "Zip/Postal Code",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          //style: TextStyle(fontSize: width*0.04,),
                          decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Email",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.02),
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          //style: TextStyle(fontSize: width*0.04,),
                          decoration: InputDecoration(
                              labelText: "Phone Number",
                              hintText: "Phone Number",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: height*0.08,
                        width: width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                //style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "Weight",
                                    hintText: "Weight[kg]",
                                    contentPadding: EdgeInsets.all(width*0.04),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width*0.44,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                //style: TextStyle(fontSize: width*0.04),
                                decoration: InputDecoration(
                                    labelText: "Height",
                                    hintText: "Height[m]",
                                    contentPadding: EdgeInsets.all(width*0.04),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width*0.9,
                        height: height*0.08,
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.all(0),
                            height: height*0.07,
                            decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(5)),
                            alignment: Alignment.center,
                            child: Text("Blood Group Selection",textScaleFactor: tScale)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(bottom: height*0.02),
                        width: width*0.9,
                        height: height*0.24,
                        alignment: Alignment.topCenter,
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          //style: TextStyle(fontSize: width*0.04),
                          maxLines: null,
                          maxLength: 1000,
                          decoration: InputDecoration(
                              labelText: "Special Note",
                              hintText: "Special Note",
                              contentPadding: EdgeInsets.all(width*0.04),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                      ),
                      Container(
                        width: width*0.9,
                        height: height*0.09,
                        margin: EdgeInsets.only(bottom: height*0.04),
                        child: RaisedButton(
                          elevation: 0,
                          highlightElevation: 0,
                          color: Color.fromRGBO(237, 28, 36, 1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontSize: width*0.08,color: Colors.white,),textScaleFactor: tScale,
                          ),
                          onPressed: (){}
                        ),
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
