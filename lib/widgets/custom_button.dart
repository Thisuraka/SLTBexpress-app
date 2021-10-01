import '../../styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String text;
  double width = 330.0;
  double height;

  CustomButton({
    required this.text,
    required this.width,
    this.height = 45.0,
  });

  @override
  _CustomButtonScreen createState() => _CustomButtonScreen();
}

class _CustomButtonScreen extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFFFEDD2E),
            Color(0xFFE8C81C),
          ]),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          // border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Text(
            widget.text,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
