import 'package:flutter/material.dart';
import '../widgets/Router.dart';

class Saved extends RouteView {
  final name = 'Favorite';
  final icon = Icons.favorite;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favorite"));
  }
}
