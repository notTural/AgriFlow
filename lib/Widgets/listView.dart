import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final String text;
  final String time;
  Notifications(this.text, this.time);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  time,
                  style: TextStyle(color: Colors.greenAccent),
                ))
          ],
        ),
      ),
    ));
  }
}
