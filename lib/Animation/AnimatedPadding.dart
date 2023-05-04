import 'package:flutter/material.dart';

class AnimationPaddingClass extends StatelessWidget {
  const AnimationPaddingClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Animation ')),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.only(
              left: padValue, right: padValue, top: padValue * 3),
          duration: const Duration(milliseconds: 1500),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: $padValue'),
        ElevatedButton(
            child: const Text('Change padding'),
            onPressed: () {
              _updatePadding(padValue == 30.0 ? 100.0 : 30.0);
            }),
      ],
    );
  }
}
