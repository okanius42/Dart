import 'package:flutter/material.dart';

class BasicInput extends StatelessWidget {
  const BasicInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Input App'),
      ),
      body: const BasicInputForm(),
    );
  }
}

class BasicInputForm extends StatefulWidget {
  const BasicInputForm({Key? key}) : super(key: key);

  @override
  State<BasicInputForm> createState() => _BasicInputFormState();
}

class _BasicInputFormState extends State<BasicInputForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'Enter your e-mail'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: const Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
