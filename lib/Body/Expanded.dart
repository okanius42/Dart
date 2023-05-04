import 'package:flutter/material.dart';

class ExpandedWork extends StatelessWidget {
  const ExpandedWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Expended'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Expanded(
                child: Container(
              color: Colors.amber,
              width: 100,
            )),
            Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
            Expanded(
                child: Container(
              width: 50,
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
