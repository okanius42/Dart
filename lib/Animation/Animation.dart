import 'package:flutter/material.dart';

class Ani1 extends StatefulWidget {
  const Ani1({super.key});

  @override
  State<Ani1> createState() => _Ani1();
}

class _Ani1 extends State<Ani1> {
  @override
  double horizontalValue = 0.0, verticalValue = 0.0;
  void _updatePadding(double vertical) async {
    double ver = 0.0;
    while (true) {
      while (ver < vertical) {
        ver++;
        await Future.delayed(const Duration(milliseconds: 2));
        setState(() {
          verticalValue = ver;
        });
      }
      while (ver > 0) {
        ver--;
        await Future.delayed(const Duration(milliseconds: 2));
        setState(() {
          verticalValue = ver;
        });
      }
    }
  }

  void _UpdateTop(double horizontal) async {
    double hori = 0.0;
    while (true) {
      while (hori < horizontal) {
        hori++;
        await Future.delayed(const Duration(milliseconds: 2));
        setState(() {
          horizontalValue = hori;
        });
      }
      while (hori > 0) {
        hori--;
        await Future.delayed(const Duration(milliseconds: 2));
        setState(() {
          horizontalValue = hori;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double heightA = MediaQuery.of(context).size.height;
    double heiApp = MediaQuery.of(context).padding.top + kToolbarHeight;
    double vertical = (heightA - heiApp) * 0.9;
    double horizontal = MediaQuery.of(context).size.width * 1.3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.only(left: horizontalValue, top: verticalValue),
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
          ),
        ),
        ElevatedButton(
            child: const Text('Change padding'),
            onPressed: () {
              _updatePadding(vertical);
              _UpdateTop(horizontal);
            }),
      ],
    );
  }
}
