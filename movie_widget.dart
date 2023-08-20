import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'model.dart';

class MovieWidget extends StatelessWidget {
  final String title;
  final int id;
  final String poster;
  final String bgposter;
  final String overview;
  final String date;

  const MovieWidget({
    super.key,
    required this.movie3,
    required this.title,
    required this.id,
    required this.poster,
    required this.bgposter,
    required this.overview,
    required this.date,
  });

  final MovieModel movie3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: movie3.title,
              id: movie3.id,
              poster: movie3.poster,
              bgposter: movie3.bgposter,
              overview: movie3.overview,
              date: movie3.date,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: 170,
            ),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500${movie3.poster}",
            ),
          ),
        ],
      ),
    );
  }
}
