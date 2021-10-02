import 'package:sltbexpress/onBoarding/edit_user.dart';
import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:blur/blur.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/bottom_navbar.dart';

@override
void initState() {}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = "Jane Doe";
  String _email = "janedoe@gmail.com";
  String _phoneNumber = "07777777";
  double _balance = 1040;
  final String _start = "Colombo";
  final String _end = "Kottawa";
  final String _busId = "WP NA - 2476";

  String profileImg = 'assets/images/avatar.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: Scaffold(
          bottomNavigationBar: BottomNavbar(),
          body: Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Blur(
                  blur: 3.5,
                  blurColor: Colors.black,
                  child: Container(
                    color: Colors.blueAccent,
                    height: 220,
                    width: double.infinity,
                    child: Image.asset(
                      profileImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(),
                      ),
                    )
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    margin: EdgeInsets.only(top: 60, left: 350),
                    child: Image.asset(
                      'assets/icons/edit.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 120, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blueAccent,
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      profileImg,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  width: 230,
                  height: 90,
                  margin: EdgeInsets.only(top: 120, left: 130),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          _name,
                          style: ProfileDataStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          _email,
                          style: ProfileDataStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          _phoneNumber,
                          style: ProfileDataStyle,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 240),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Balance :  Rs." + _balance.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF858585)),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, top: 30, bottom: 20),
                        child: Text("Ongoing",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0)),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _start + " - " + _end,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              _busId,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
