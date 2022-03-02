import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'detail.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _name = TextEditingController();
  TextEditingController _surname = TextEditingController();
  TextEditingController _id = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _sex = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _grade = TextEditingController();
  TextEditingController _edu = TextEditingController();

  @override
  void initState() {
    _name.text = ""; //innitail value of text field
    _surname.text = "";
    _id.text = "";
    _password.text = "";
    _sex.text = "";
    _username.text = "";
    _grade.text = "";
    _edu.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTER"),
          centerTitle: true,
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wall.jpg"),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.all(1),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        labelText: "ENTER USERNAME",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR USERNAME',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.face, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  TextField(
                      controller: _password,
                      decoration: InputDecoration(
                        labelText: "ENTER PASSWORD",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR PASSWORD',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  TextField(
                      controller: _grade,
                      decoration: InputDecoration(
                        labelText: "ENTER GRADE",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR GRADE',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.grade, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  TextField(
                      controller: _id,
                      decoration: InputDecoration(
                        labelText: "ENTER ID",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR ID',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon:
                            Icon(Icons.insert_drive_file, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  TextField(
                      controller: _sex,
                      decoration: InputDecoration(
                        labelText: "ENTER SEX",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR SEX',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  TextField(
                      controller: _edu,
                      decoration: InputDecoration(
                        labelText: "ENTER EDUCATION",
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'ENTER YOUR EDUCATION',
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.cast_for_education_sharp,
                            color: Colors.white),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 1.5),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(
                                name: _name.text,
                                user: _username.text,
                                id: _id.text,
                                sex: _sex.text,
                                edu: _edu.text,
                                grade: _grade.text,
                                pass: _password.text,
                                sur: _surname.text),
                          ),
                        );
                      },
                      child: Text('ยืนยัน'))
                ],
              ),
            )));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ));
  }
  //create a function like this so that you can use it wherever you want
}
