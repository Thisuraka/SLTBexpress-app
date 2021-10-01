import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';

class TestScreen1 extends StatefulWidget {
  @override
  _TestScreen1State createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // QRViewController controller;

  @override
  void dispose() {
    // controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var json = ["baba black sheep", 123456, "hello world", "nidimathai"];
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          QrImage(
            data: json.toString(),
            version: QrVersions.auto,
            size: 200.0,
          ),
        ],
      ),
    ));
  }
}
