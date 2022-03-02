import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WelcomePage extends StatelessWidget {
  String name, user, id, sex, edu, grade, pass, sur;

  double wh = 0, total = 0, total1 = 0, total2 = 0, total3 = 0, total4 = 0;
  WelcomePage(
      {Key? key,
      required this.name,
      required this.user,
      required this.sex,
      required this.edu,
      required this.grade,
      required this.id,
      required this.pass,
      required this.sur})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("#,###.0#", "en_US");
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปรายละเอียด'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/wall.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('User : '),
                      subtitle: Text(' $user'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('Pass : '),
                      subtitle: Text(' $pass'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('เพศ : '),
                      subtitle: Text(' $sex'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('ID : '),
                      subtitle: Text(' $id'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('Grade : '),
                      subtitle: Text(' $grade'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(1),
                    child: ListTile(
                      title: Text('Education : '),
                      subtitle: Text(' $edu'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
