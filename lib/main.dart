import 'package:flutter/material.dart';
import 'package:fluttertp/UI/Gallery.dart';
import 'package:fluttertp/UI/CameraPage.dart';
import 'package:fluttertp/UI/GalleryData.dart';
import 'package:fluttertp/UI/Home.dart';
import 'package:fluttertp/UI/WeatherForm.dart';
import 'package:fluttertp/UI/Quiz.dart';
import 'package:fluttertp/UI/Weather.dart';
import 'package:fluttertp/Scopped-models/main.dart';
import 'package:fluttertp/utils/AppLocalizations.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final routes = <String, WidgetBuilder>{
   Home.tag: (context) => Home(),
   Quiz.tag: (context) => Quiz(),
   Weather.tag: (context) => Weather("Oujda"),
   Gallery.tag: (context) => Gallery(),
   WeatherForm.tag: (context) => WeatherForm(),
   GalleryData.tag: (context) => GalleryData(""),
   CameraPage.tag: (context) => CameraPage(),
  };
  final MainModel _model = MainModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
        supportedLocales: [
          Locale('EN', 'US'),
          Locale('AR', ''),
          Locale('FR', '')
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          FallbackLocalizationDelegate()

        ],
        locale: Locale('EN'),
        title: 'tp1',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.green,
          accentColor: Colors.purple,
          secondaryHeaderColor:  Color.fromRGBO(230, 126, 0, 1),
          indicatorColor: Color.fromRGBO(50, 137, 179, 1),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          // Define the default font family.
          fontFamily: 'Roboto',
          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 62.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
            subtitle: TextStyle(fontSize: 18.0, fontFamily: 'Roboto', fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
          ),
        ),
        home: Home(),
        routes: routes,
      ),
    );
  }
}

class FallbackLocalizationDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  @override
  bool isSupported(Locale locale) => true;
  @override
  Future<MaterialLocalizations> load(Locale locale) async => DefaultMaterialLocalizations();
  @override
  bool shouldReload(_) => false;
}