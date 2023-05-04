import 'package:flutter/material.dart';

class TapBoxClass extends StatelessWidget {
  const TapBoxClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TapBox'),
      ),
      body: const TapBoxA(),
    );
  }
}

class TapBoxA extends StatefulWidget {
  const TapBoxA({Key? key}) : super(key: key);

  @override
  State<TapBoxA> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _handleTap,
        child: Container(
          width: 300,
          height: 300,
          color: _active ? Colors.green[700] : Colors.grey[500],
          child: _active
              ? const Center(
                  child: Text('Active', style: TextStyle(fontSize: 32)))
              : const Center(
                  child: Text('Inactive', style: TextStyle(fontSize: 32))),
        ),
      ),
    );
  }
}
