import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}
