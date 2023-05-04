import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBuilderClass extends StatelessWidget {
  const AnimatedBuilderClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Title',
      home: AnimatedBuilderClassState(),
    );
  }
}

class AnimatedBuilderClassState extends StatefulWidget {
  const AnimatedBuilderClassState({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderClassState> createState() =>
      _AnimatedBuilderClassStateState();
}

class _AnimatedBuilderClassStateState extends State<AnimatedBuilderClassState>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 10), vsync: this)
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 250,
            height: 250,
            color: Colors.green,
            child: const Center(child: Text('Whee!')),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
                angle: _controller.value * 2.0 * math.pi, child: child);
          }),
    );
  }
}
