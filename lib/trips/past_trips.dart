import 'package:easygo/widgets/horizontal_card.dart';
import 'package:flutter/material.dart';
import 'package:easygo/styles.dart';
import 'package:easygo/widgets/custom_appbar.dart';
import 'package:easygo/widgets/bottom_navbar.dart';

@override
void initState() {}

class PastTripsScreen extends StatefulWidget {
  @override
  _PastTripsScreenState createState() => new _PastTripsScreenState();
}

class _PastTripsScreenState extends State<PastTripsScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final String _date = "21-9-2021";
  final String _time = "17:36";
  final String _busId = "NA - 2476";
  final String _route = "138";
  final String _start = "Colombo";
  final String _end = "Kottawa";
  final double _fare = 60.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppbarWidget(
          mainTitle: "Your trips",
          leadingImg: false,
          logo: false,
          searchIcon: true,
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
      body: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 1,
            childAspectRatio: 100 / 55,
            children: List.generate(5, (index) {
              return HorizontalCard(
                  date: _date,
                  time: _time,
                  busId: _busId,
                  route: _route,
                  start: _start,
                  end: _end,
                  fare: _fare);
            }),
          ),
        ),
      ),
    );
  }
}
