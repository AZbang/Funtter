import 'package:flutter/material.dart';
import 'Router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enigma',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Router(),
    );
  }
}
