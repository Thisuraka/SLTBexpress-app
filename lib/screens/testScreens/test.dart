import 'package:sltbexpress/api/api_calls.dart';
import 'package:sltbexpress/screens/driver/qrcode_screen.dart';
import 'package:sltbexpress/screens/onBoarding/edit_user.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:blur/blur.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/bottom_navbar.dart';

@override
void initState() {}

class Test extends StatefulWidget {
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: Scaffold(
          bottomNavigationBar: BottomNavbar(),
          body: SafeArea(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => {
                    ApiCalls.createTrip(
                        uid: "12",
                        jid: "2",
                        startPlace: "2",
                        endPlace: "2",
                        fare: "400"),
                  },
                  child: CustomButton(
                    text: "Start",
                    width: 340.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  /*   ApiCalls.signUp(
                      nic: "nic",
                      passport: "passport",
                      name: "name",
                      email: "driver@gmail.com",
                      password: "password",
                    ) 
        ApiCalls.editProfile(
                      id: '12',
                      nic: "nic",
                      passport: "passport",
                      name: "passenger name",
                      email: "passenger@gmail.com",
                      password: "passenger",
                    )
                    )
          ApiCalls.signIn(
                        email: "passenger@gmail.com", password: "password") 
                        
          ApiCalls.setBusSession(
                      route: "2",
                      bus: "2",
                      driver: "6",
                      startTime: DateTime.now().toString(),
                    ),
                        
          ApiCalls.submitComplaint(
                        id: "6",
                        journeyId: "4",
                        title: "title",
                        description: "description")

          ApiCalls.createTrip(
                        uid: "12",
                        jid: "2",
                        startPlace: "2",
                        endPlace: "2",
                        fare: "400"),

                        */