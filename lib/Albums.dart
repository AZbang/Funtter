import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';

Future<Album> fetchAlbums() async {
  final response = await http.get('https://picsum.photos/v2/list');

  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class ImageModel {
  ImageModel(this.id, this.title, this.url);
  final String id;
  final String title;
  final String url;
}

class Album {
  final List<ImageModel> images;
  Album(this.images);

  factory Album.fromJson(List<dynamic> json) {
    final rnd = new Random();

    return Album(json
        .map((image) => ImageModel(image['id'], image['author'],
            'https://picsum.photos/id/${rnd.nextInt(100)}/400'))
        .toList());
  }
}
