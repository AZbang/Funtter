import 'package:flutter/material.dart';
import '../store.dart';

class ImageCardWidget extends StatelessWidget {
  ImageCardWidget(this.image);
  final ImageModel image;

  final labelStyle = TextStyle(
      fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white);

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: new BorderRadius.circular(8.0),
        child: Stack(children: <Widget>[
          Container(
              alignment: Alignment.bottomCenter,
              child: Image.network(image.url, fit: BoxFit.fill)),
          Container(
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black
                  ],
                ),
              ),
              child: Text(image.title,
                  textAlign: TextAlign.center, style: labelStyle))
        ]));
  }
}
