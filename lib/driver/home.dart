import 'package:sltbexpress/driver/qrcode_screen.dart';
import 'package:sltbexpress/onBoarding/edit_user.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:blur/blur.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/bottom_navbar.dart';

@override
void initState() {}

class DriverHome extends StatefulWidget {
  @override
  _DriverHomeState createState() => new _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = "Jane Doe";
  String _email = "janedoe@gmail.com";
  String _phoneNumber = "07777777";
  double _balance = 1040;
  String _route = "Route";
  String _start = "Start";
  List<String> RouteList = [
    "120",
    "138",
    "101",
    "100",
    "122",
    "099",
    "689",
    "022",
    "124"
  ];
  List<String> HaltList = [
    "Halt 1",
    "Halt 2",
    "Halt 3",
    "Halt 4",
    "Halt 5",
    "Halt 6",
    "Halt 7",
    "Halt 8",
    "Halt 9"
  ];

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
            child: Column(
              children: [
                Stack(
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
                        margin: const EdgeInsets.only(top: 60, left: 350),
                        child: Image.asset(
                          'assets/icons/edit.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(top: 120, left: 20),
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
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomDropDown(
                  hint: "Route",
                  itemList: RouteList,
                  newValue: (value) {
                    _route = value;
                  },
                  itemValue: _route,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomDropDown(
                  hint: "Start",
                  itemList: HaltList,
                  newValue: (value) {
                    _start = value;
                  },
                  itemValue: _start,
                ),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => QRCodeScreen(),
                      ),
                    )
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
