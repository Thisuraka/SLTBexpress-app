import 'package:sltbexpress/screens/trips/home.dart';
import 'package:sltbexpress/screens/trips/new_trip.dart';
import 'package:sltbexpress/screens/trips/past_trips.dart';

import '../../styles.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (_currentIndex) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewTrip(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PastTripsScreen(),
          ),
        );
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        onTap: (index) => onTabTapped(index),
        elevation: 15.0,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        backgroundColor: Colors.grey[400],
        // backgroundColor: const Color(0xFF333333),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              label: "",
              backgroundColor: Colors.white,
              icon: Image.asset(
                'assets/icons/home.png',
                height: 30.0,
                gaplessPlayback: true,
              )),
          BottomNavigationBarItem(
              label: "",
              backgroundColor: Colors.white,
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Image.asset(
                  'assets/icons/new.png',
                  height: 30.0,
                  gaplessPlayback: true,
                ),
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "",
              icon: Image.asset(
                'assets/icons/recent.png',
                height: 50.0,
                gaplessPlayback: true,
              )),
        ],
      ),
    );
  }
}
