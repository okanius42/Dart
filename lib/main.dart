import 'package:flutter/material.dart';

import 'router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Routes Demo',
      initialRoute: '/',
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
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
        title: const Text('The Home Page'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('App Bar', '/appBarMain', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Body Working', '/body', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('Inputs', '/inputs', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Animations ', '/animationMain', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonBuild('Activities', '/activities', context),
              const SizedBox(
                width: 32,
              ),
              buttonBuild('Empty ', '/', context),
            ],
          ),
        ],
      ),
    );
  }
}
