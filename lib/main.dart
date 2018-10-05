import 'package:flutter/material.dart';
import 'package:assignment_app/Home_Screen1.dart';
import 'package:assignment_app/Profile_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social media',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        'details':(BuildContext context) => ProfileScreen(),
      },
    );
  }
}