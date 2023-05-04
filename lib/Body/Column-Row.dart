import 'package:flutter/material.dart';

class ColumnWork extends StatelessWidget {
  const ColumnWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.up,
        children: [
          Container(color: Colors.purple, width: 100, height: 100),
          Container(color: Colors.black, width: 100, height: 100),
          Container(color: Colors.yellowAccent, width: 100, height: 100),
          Container(color: Colors.red, width: 100, height: 100),
          Container(color: Colors.grey, width: 100, height: 100),
          Container(color: Colors.green, width: 100, height: 100),
          Container(color: Colors.deepPurple, width: 100, height: 100),
          Container(color: Colors.deepOrange, width: 100, height: 100),
        ],
      ),
    );
  }
}

class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ClipRRect();
  }
}
