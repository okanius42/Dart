import 'package:flutter/material.dart';

class AnimatedAlignClass extends StatefulWidget {
  const AnimatedAlignClass({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignClass> createState() => _AnimatedAlignClassState();
}

class _AnimatedAlignClassState extends State<AnimatedAlignClass> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align Class'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.red,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
