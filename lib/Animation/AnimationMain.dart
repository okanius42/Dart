import 'package:flutter/material.dart';

class AnimationMain extends StatelessWidget {
  const AnimationMain({Key? key}) : super(key: key);
  Widget buttonBuild(String title, String routeName, BuildContext context) =>
      Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, routeName),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('Animation Padding ', '/animationPadding', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Animation Align', '/animatedAlign', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild(
                  'Animation Builder ', '/animatedBuilderClass', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Empty', '/', context),
            ],
          ),
        ],
      ),
    );
  }
}
