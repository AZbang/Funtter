import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:math';

Future<ImagesStore> fetchAlbums() async {
  final response = await http.get('https://picsum.photos/v2/list');

  if (response.statusCode == 200) {
    return ImagesStore.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class ImageModel {
  ImageModel(this.id, this.title);
  final String id;
  final String title;
  get url => 'https://picsum.photos/id/$id/400';
}

class ImagesStore {
  final List<ImageModel> images;
  ImagesStore(this.images);

  factory ImagesStore.fromJson(List<dynamic> json) {
    return ImagesStore(
        json.map((image) => ImageModel(image['id'], image['author'])).toList());
  }
}
