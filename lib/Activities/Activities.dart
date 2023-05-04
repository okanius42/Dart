import 'package:flutter/material.dart';

class ActivitiesClass extends StatelessWidget {
  const ActivitiesClass({Key? key}) : super(key: key);

  Widget buttonBuild(String title, String routeName, BuildContext context) =>
      ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, routeName),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activities"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('Favorite Widget ', '/favoriteWidget', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Tap Box', '/tapBox', context),
            ],
          ),
        ],
      ),
    );
  }
}
