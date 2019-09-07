import 'package:flutter/material.dart';
import 'ImageCardWidget.dart';
import '../store.dart';

class ImagesListWidget extends StatelessWidget {
  ImagesListWidget(this.images);
  final List<ImageModel> images;

  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: images.map((image) => ImageCardWidget(image)).toList(),
          ),
        ),
      ],
    );
  }
}
