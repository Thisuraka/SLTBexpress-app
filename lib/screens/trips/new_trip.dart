import 'package:sltbexpress/widgets/custom_appbar.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_dropdown.dart';
import 'package:sltbexpress/widgets/qrscanner.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:sltbexpress/widgets/bottom_navbar.dart';

class NewTrip extends StatefulWidget {
  String? scannedData = '';

  NewTrip({Key? key, this.scannedData}) : super(key: key);

  @override
  _NewTripState createState() => new _NewTripState();
}

class _NewTripState extends State<NewTrip> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double _balance = 1040;
  late double _tripCost = 00.00;
  String _busRoute = "";
  String _busID = "";
  String _busDriver = "";
  bool dataRecieved = false;
  String _route = "Route";
  String _start = "Start";
  String _end = "Destination";
  String _busId = "NA - 2476";
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
  void initState() {
    if (widget.scannedData != null) {
      formatBusData();
    }
  }

  void formatBusData() {
    setState(() {
      var a = widget.scannedData;
      var ab = (a!.split(','));

      _busRoute = ab[0];
      _busID = ab[1];
      _busDriver = ab[2];

      dataRecieved = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppbarWidget(
          mainTitle: "New trip",
          leadingImg: false,
          logo: false,
          searchIcon: false,
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
      body: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Balance :  Rs." + _balance.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 22, color: Color(0xFF858585)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "Trip cost :  Rs." + _tripCost.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, color: Color(0xFF858585)),
                          ),
                        ),
                      ]),
                ),
                CustomDropDown(
                  hint: "Route",
                  itemList: RouteList,
                  newValue: (value) {
                    _route = value;
                  },
                  itemValue: _route,
                ),
                CustomDropDown(
                  hint: "Start",
                  itemList: HaltList,
                  newValue: (value) {
                    _start = value;
                  },
                  itemValue: _start,
                ),
                CustomDropDown(
                  hint: "Destination",
                  itemList: HaltList,
                  newValue: (value) {
                    _end = value;
                  },
                  itemValue: _end,
                ),
                dataRecieved
                    ? Container(
                        width: double.infinity,
                        height: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Route             : " + _busRoute,
                                    style: const TextStyle(fontSize: 18)),
                                Text("BusID             : " + _busID,
                                    style: const TextStyle(fontSize: 18)),
                                Text("Driver name  : " + _busDriver,
                                    style: const TextStyle(fontSize: 18)),
                              ]),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => QRScanner(
                                user: 'passenger',
                              ),
                            ),
                          )
                        },
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                    "Please board a bus of the selected route"),
                                Text("Scan the QR code on the bus"),
                              ]),
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
