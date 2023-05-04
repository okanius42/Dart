import 'package:flutter/material.dart';

class BodyWorking extends StatelessWidget {
  const BodyWorking({Key? key}) : super(key: key);
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
        title: const Text('Body Working'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonBuild('Container', '/container', context),
                const SizedBox(
                  width: 32,
                ),
                buttonBuild('Container 2', '/container2', context),
                const SizedBox(
                  width: 32,
                ),
                buttonBuild('Column', '/column', context),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonBuild('Icon and Image', '/inanimate', context),
                const SizedBox(
                  width: 32,
                ),
                buttonBuild('Expanded', '/expanded', context),
                const SizedBox(
                  width: 32,
                ),
                buttonBuild('Empty', 'routeName', context),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonBuild('Empty', 'routeName', context),
                const SizedBox(
                  width: 48,
                ),
                buttonBuild('Empty', 'routeName', context),
                const SizedBox(
                  width: 32,
                ),
                buttonBuild('Empty', 'routeName', context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
