import 'package:flutter/material.dart';
import 'Home.dart';
import 'Saved.dart';

abstract class RouteView extends StatelessWidget {
  String name;
  IconData icon;
}

class Router extends StatefulWidget {
  final List<RouteView> views = [Home(), Saved()];

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  int selectedView = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> menu = widget.views
        .map((view) => BottomNavigationBarItem(
              icon: Icon(view.icon),
              title: Text(view.name),
            ))
        .toList();

    return Scaffold(
      body: widget.views.elementAt(selectedView),
      bottomNavigationBar: BottomNavigationBar(
        items: menu,
        currentIndex: selectedView,
        selectedItemColor: Colors.blueGrey,
        onTap: onItemTapped,
      ),
    );
  }
}
