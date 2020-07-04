import 'package:agri_flow/Screens/notification_screen.dart';
import 'package:flutter/material.dart';

class AppBarModified extends StatefulWidget {
  const AppBarModified({
    Key key,
    IconButton leading,
    List<Widget> actions,
  }) : super(key: key);

  @override
  _AppBarModifiedState createState() => _AppBarModifiedState();
}

class _AppBarModifiedState extends State<AppBarModified> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.filter_list,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, NotificationScreen().routeName);
          },
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
