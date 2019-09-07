import 'package:flutter/material.dart';
import 'widgets/Router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funtter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Router(),
    );
  }
}
