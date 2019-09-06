import 'package:flutter/material.dart';
import 'Router.dart';

class Saved extends RouteView {
  final name = 'Saved';
  final icon = Icons.hearing;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Saved"));
  }
}
