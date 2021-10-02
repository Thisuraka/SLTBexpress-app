import 'package:easygo/driver/home.dart';
import 'package:easygo/onBoarding/edit_user.dart';
import 'package:easygo/onBoarding/login.dart';
import 'package:easygo/onBoarding/register_screen.dart';
import 'package:easygo/onBoarding/splash.dart';
import 'package:easygo/testScreens/testscreen.dart';
import 'package:easygo/trips/home.dart';
import 'package:easygo/trips/new_trip.dart';
import 'package:easygo/trips/past_trips.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestScreen(),
    );
  }
}
