import 'package:flutter/material.dart';
import 'package:easygo/styles.dart';

@override
void initState() {}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
