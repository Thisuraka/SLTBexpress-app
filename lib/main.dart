import 'package:sltbexpress/screens/driver/home.dart';
import 'package:sltbexpress/screens/inspector/ins_home.dart';
import 'package:sltbexpress/screens/onBoarding/edit_user.dart';
import 'package:sltbexpress/screens/onBoarding/login.dart';
import 'package:sltbexpress/screens/onBoarding/register_screen.dart';
import 'package:sltbexpress/screens/onBoarding/splash.dart';
import 'package:sltbexpress/screens/trips/home.dart';
import 'package:sltbexpress/screens/trips/new_trip.dart';
import 'package:sltbexpress/screens/trips/past_trips.dart';
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
      home: InsHomeScreen(),
    );
  }
}
