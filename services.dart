import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";
  static const String nowplay = "now-playing";
  static const String comingsoon = "coming-soon";

  static Future<List<MovieModel>> getPopularMovie() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final movieDecode = jsonDecode(response.body);
      final movies = movieDecode['results'] as List<dynamic>;
      for (var movie in movies) {
        movieInstances.add(MovieModel.fromJson(movie));
      }

      return movieInstances;
    }
    print(response.statusCode);
    throw Error();
  }

  static Future<List<MovieModel>> getNowplayMovie() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse('$baseUrl/$nowplay');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final movieDecode = jsonDecode(response.body);
      final movies = movieDecode['results'] as List<dynamic>;
      for (var movie in movies) {
        movieInstances.add(MovieModel.fromJson(movie));
      }

      return movieInstances;
    }
    print(response.statusCode);
    throw Error();
  }

  static Future<List<MovieModel>> getComingsoonMovie() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse('$baseUrl/$comingsoon');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final movieDecode = jsonDecode(response.body);
      final movies = movieDecode['results'] as List<dynamic>;
      for (var movie in movies) {
        movieInstances.add(MovieModel.fromJson(movie));
      }

      return movieInstances;
    }
    print(response.statusCode);
    throw Error();
  }
}
