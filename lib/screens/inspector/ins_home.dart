import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sltbexpress/screens/onBoarding/edit_user.dart';
import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:blur/blur.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/bottom_navbar.dart';
import 'package:sltbexpress/widgets/custom_dropdown.dart';
import 'package:sltbexpress/widgets/custom_textbox.dart';
import 'package:sltbexpress/widgets/qrscanner.dart';

@override
void initState() {}

class InsHomeScreen extends StatefulWidget {
  String? scannedData = '';

  InsHomeScreen({Key? key, this.scannedData}) : super(key: key);
  @override
  _InsHomeScreenState createState() => new _InsHomeScreenState();
}

class _InsHomeScreenState extends State<InsHomeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _title = TextEditingController();
  TextEditingController _desc = TextEditingController();

  String _name = "Jane Doe";
  String _email = "janedoe@gmail.com";
  String _phoneNumber = "07777777";
  double _balance = 1040;
  String _route = "Route";
  String _start = "Start";
  Barcode? _journeyID;
  bool dataRecieved = false;

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

  String profileImg = 'assets/images/avatar.jpg';

  @override
  Widget build(BuildContext context) {
    void formatBusData() {
      setState(() {
        var a = widget.scannedData;
        var ab = (a!.split(','));

        // _busRoute = ab[0];
        // _busID = ab[1];
        // _busDriver = ab[2];

        dataRecieved = true;
      });
    }

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
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 240),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextBox(
                            controller: _title,
                            hint: "Title",
                            labelText: 'Title',
                            prifixIcon: 'assets/icons/phone.png',
                            keyboardType: TextInputType.text,
                            onTap: () {},
                          ),
                          CustomTextBox(
                            controller: _desc,
                            hint: "Description",
                            labelText: 'Description',
                            prifixIcon: 'assets/icons/phone.png',
                            keyboardType: TextInputType.text,
                            onTap: () {},
                          ),
                          CustomDropDown(
                            hint: "Route",
                            itemList: RouteList,
                            newValue: (value) {
                              _route = value;
                            },
                            itemValue: _route,
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => QRScanner(
                                    user: 'inspector',
                                  ),
                                ),
                              )
                            },
                            child: Container(
                              width: double.infinity,
                              height: 300,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Scan the QR code of the passenger"),
                                  ]),
                            ),
                          ),
                        ],
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
