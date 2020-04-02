import 'package:flutter/material.dart';
import 'package:fluttertp/UI/Weather.dart';

class WeatherForm extends StatefulWidget {
  static String tag = 'WeatherForm';
  @override
  _WeatherForm createState() => _WeatherForm();
}

class _WeatherForm extends State<WeatherForm> {
  String city;
  TextEditingController cityEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${city}'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Tape a City..'),
                controller: cityEditingController,
                onChanged: (String str) {
                  setState(() {
                    city = str;
                  });
                },
                onSubmitted: (String str) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Weather(city)));
                  cityEditingController.text = "";
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text('Get Weather'),
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Weather(city)));
                cityEditingController.text = "";
              },
              color: Colors.deepOrangeAccent,
            ),
          )
        ],
      ),
    );
  }
}
