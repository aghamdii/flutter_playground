import 'package:flutter/material.dart';
import 'package:flutter_playground/validators.dart';
import 'dart:js' as js;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('LOW'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: Validators.validateEmail,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: Validators.validateEmail,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(js.context.callMethod('test'));
                  },
                  child: Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
