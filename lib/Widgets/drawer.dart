import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({
    Key key,
    ListView child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("Assets/Images/avatar.jpg"),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width * 0.63,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.05,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Hey,",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Leyla Talibzade,",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
          ),
          Divider(),
          // new UserAccountsDrawerHeader(
          //   accountName: new Text("Leyla Talıbzade"),
          //   accountEmail: new Text("talibzade@gmail.com"),
          //   currentAccountPicture: CircleAvatar(
          //       backgroundColor: Colors.yellow,
          //       child: Text('T', style: TextStyle(color: Colors.black87))),
          // ),
          new ListTile(
              leading: Icon(MdiIcons.sprout),
              title: new Text("Plants"),
              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(MdiIcons.chartAreaspline),
              title: new Text("Reports"),
              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(MdiIcons.sale),
              title: new Text("Promo Codes"),
              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(MdiIcons.accountSettings),
              title: new Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              }),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.80,
          ),

          new ListTile(
              title: new Text(
                "Log Out",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
