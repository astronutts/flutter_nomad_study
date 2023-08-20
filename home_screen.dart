import 'package:flutter/material.dart';
import 'package:movie_app/model.dart';
import 'package:movie_app/services.dart';

import 'movie_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  Future<List<MovieModel>> movie = ApiService.getPopularMovie();
  Future<List<MovieModel>> movie1 = ApiService.getNowplayMovie();
  Future<List<MovieModel>> movie2 = ApiService.getComingsoonMovie();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: SizedBox(
                width: 100,
                height: 100,
                child: FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var movie3 = snapshot.data![index];
                                return MovieWidget(
                                  title: movie3.title,
                                  id: movie3.id,
                                  poster: movie3.poster,
                                  bgposter: movie3.bgposter,
                                  overview: movie3.overview,
                                  date: movie3.date,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  future: movie,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Now in Cinemas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: SizedBox(
                width: 100,
                height: 100,
                child: FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var movie3 = snapshot.data![index];
                                return Column(
                                  children: [
                                    MovieWidget(
                                      title: movie3.title,
                                      id: movie3.id,
                                      poster: movie3.poster,
                                      bgposter: movie3.bgposter,
                                      overview: movie3.overview,
                                      date: movie3.date,
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  future: movie1,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Coming soon",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: SizedBox(
                width: 100,
                height: 100,
                child: FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var movie3 = snapshot.data![index];
                                return MovieWidget(
                                  title: movie3.title,
                                  id: movie3.id,
                                  poster: movie3.poster,
                                  bgposter: movie3.bgposter,
                                  overview: movie3.overview,
                                  date: movie3.date,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  future: movie2,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
