import 'package:flutter/material.dart';
import '../widgets/Router.dart';
import '../widgets/ImagesListWidget.dart';
import '../store.dart';

class Home extends RouteView {
  final name = 'Home';
  final icon = Icons.home;
  final Future<ImagesStore> post = fetchAlbums();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ImagesStore>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) return ImagesListWidget(snapshot.data.images);
          if (snapshot.hasError) return Text("${snapshot.error}");
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
