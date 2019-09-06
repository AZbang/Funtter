import 'package:flutter/material.dart';
import 'Router.dart';
import 'Albums.dart';

class Home extends RouteView {
  final name = 'Home';
  final icon = Icons.home;
  final Future<Album> post = fetchAlbums();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Album>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    crossAxisCount: 2,
                    children: snapshot.data.images
                        .map((image) => ClipRRect(
                              borderRadius: new BorderRadius.circular(8.0),
                              child: Image.network(image.url, fit: BoxFit.fill),
                            ))
                        .toList(),
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
