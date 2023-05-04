import 'package:flutter/material.dart';

class InputMain extends StatelessWidget {
  const InputMain({Key? key}) : super(key: key);
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
        title: const Text('Inputs'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('Auto Complete Input', '/autoCompleted', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Basic Input', '/basicInput', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonBuild('Pick Image ', '/imageFromGallery', context),
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
