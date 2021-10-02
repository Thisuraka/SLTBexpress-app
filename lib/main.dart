import 'package:sltbexpress/driver/home.dart';
import 'package:sltbexpress/onBoarding/edit_user.dart';
import 'package:sltbexpress/onBoarding/login.dart';
import 'package:sltbexpress/onBoarding/register_screen.dart';
import 'package:sltbexpress/onBoarding/splash.dart';
import 'package:sltbexpress/widgets/qrscanner.dart';
import 'package:sltbexpress/trips/home.dart';
import 'package:sltbexpress/trips/new_trip.dart';
import 'package:sltbexpress/trips/past_trips.dart';
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
      home: HomeScreen(),
    );
  }
}
