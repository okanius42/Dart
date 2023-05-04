import 'package:flutter/material.dart';

class AutoCompleteClass extends StatelessWidget {
  const AutoCompleteClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Complete button'),
        actions: const [CloseButton()],
      ),
      body: const Center(child: AutoFunction()),
    );
  }
}

class AutoFunction extends StatefulWidget {
  const AutoFunction({Key? key}) : super(key: key);

  @override
  State<AutoFunction> createState() => _AutoFunctionState();
}

class _AutoFunctionState extends State<AutoFunction> {
  static const List<String> _kOptions = <String>[
    'okan',
    'algil',
    'okanalgil@gmail.com',
  ];
  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
