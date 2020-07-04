import 'package:agri_flow/Screens/notification_screen.dart';
import 'package:agri_flow/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ReportScreen extends StatefulWidget {
  final routeName = "ReportScreen";
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.sprout),
            title: Text('Plants'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.post),
            title: Text('Blog'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.chartAreaspline),
            title: Text('Report'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: DrawerNavigation(),
    );
  }
}