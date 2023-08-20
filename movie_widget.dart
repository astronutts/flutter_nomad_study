import 'package:flutter/material.dart';

import 'detail_screen.dart';

class MovieWidget extends StatelessWidget {
  final String title;
  final int id;
  final String poster;
  final String bgposter;
  final String overview;
  final String date;

  const MovieWidget({
    super.key,
    required this.title,
    required this.id,
    required this.poster,
    required this.bgposter,
    required this.overview,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              id: id,
              poster: poster,
              bgposter: bgposter,
              overview: overview,
              date: date,
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
              "https://image.tmdb.org/t/p/w500$poster",
            ),
          ),
        ],
      ),
    );
  }
}
