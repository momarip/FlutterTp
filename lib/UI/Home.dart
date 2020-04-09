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
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "My App",
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
                  "https://avatars2.githubusercontent.com/u/52053276?s=460&u=474ac96e1027f59e5b9c8cd7986907d439686a3e&v=4"),
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
              accountName: Text("El yousfi Mohammed",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              accountEmail: Text("momarip.el.yousfi@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/lake.jpeg'),
                  fit: BoxFit.cover,
                ),
                  ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars2.githubusercontent.com/u/52053276?s=460&u=474ac96e1027f59e5b9c8cd7986907d439686a3e&v=4")),
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