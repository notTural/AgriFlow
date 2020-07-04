import 'package:flutter/material.dart';
import 'package:agri_flow/Widgets/listView.dart';

class NotificationScreen extends StatefulWidget {
  final routeName = "NotificationScreen";
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final titles = [
    'John doe commented your comment on How to produce best fertilizer for tomatoes',
    'Samantha Check-in to XX Garden',
    'Apple, Blueberry, Carrot, Mango & Almond need to watering now!',
    'Robert Jordan Check-in to XX Garden',
    'Harvestmoon Garden want to tread their 4 ton Carrot with your 3 tons tomatoes.'
  ];
  final hours = ['1hr ago', '3hr ago', '3hr ago', '4hr ago', '5hr ago'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bildirişlər',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[],
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, int index) =>
              Notifications(this.titles[index], this.hours[index]),
          itemCount: this.titles.length,
        ),
      ),
    );
  }
}
