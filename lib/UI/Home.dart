import 'package:flutter/material.dart';
import 'package:fluttertp/UI/Gallery.dart';
import 'package:fluttertp/UI/Quiz.dart';
import 'package:fluttertp/UI/Weather.dart';
import 'package:fluttertp/UI/WeatherForm.dart';

class Home extends StatefulWidget {
  static String tag = 'Home';
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "TP1",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          )
        ],
        leading: GestureDetector(
          onTap: () => _scaffoldKey.currentState.openDrawer(),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/48822358?s=400&u=c1f455c093db3478e025a9846f1880a0f10acf1d&v=4"),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.exit_to_app,
                    size: 29,
                    color: Colors.black,
                  ),
                  onTap: () {},
                )
              ],
              accountName: Text("El Outmani Moustapha",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              accountEmail: Text("moustapha.eloutmani@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              decoration: BoxDecoration(
                  /*color: primary,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/lake.jpeg'),
                  fit: BoxFit.cover,
                ),*/
                  ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars1.githubusercontent.com/u/48822358?s=400&u=c1f455c093db3478e025a9846f1880a0f10acf1d&v=4")),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.black,
              ),
              title: Text("Quiz",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.wb_sunny,
                color: Colors.black,
              ),
              title: Text("Weather",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherForm()),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.image,
                color: Colors.black,
              ),
              title: Text("Gallery",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gallery()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
