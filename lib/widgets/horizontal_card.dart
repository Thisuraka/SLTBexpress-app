import '../../styles.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  String date;
  String time;
  String busId;
  String route;
  String start;
  String end;
  double fare;

  HorizontalCard(
      {required this.date,
      required this.time,
      required this.start,
      required this.end,
      required this.busId,
      required this.route,
      required this.fare});

  @override
  _HorizontalCardState createState() => new _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 400),
      child: Container(
        width: double.infinity,
        height: 200.0,
        margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Button2BorderColor),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => {},
              child: Container(
                margin: const EdgeInsets.only(left: 315, top: 15),
                width: 30,
                height: 30,
                child: Image.asset(
                  'assets/icons/more.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    widget.start + " - " + widget.end,
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 20, left: 270),
                  child: Text(
                    widget.route,
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 70, left: 20),
                  child: Text(
                    "Date             :  " + widget.date,
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                ),
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 100, left: 20),
                  child: Text(
                    "Time            :  " + widget.time,
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                ),
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 130, left: 20),
                  child: Text(
                    "BusID           :  " + widget.busId,
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                ),
                Container(
                  width: 190,
                  margin: const EdgeInsets.only(top: 160, left: 20),
                  child: Text(
                    "Trip Fare      :  " + widget.fare.toString() + "/-",
                    style: const TextStyle(
                        fontFamily: DefaultFont,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
