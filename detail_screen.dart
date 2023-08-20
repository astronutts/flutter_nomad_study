import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final int id;
  final String poster;
  final String bgposter;
  final String overview;
  final String date;

  const DetailScreen({
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
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://image.tmdb.org/t/p/w500$bgposter"),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                  )),
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const Text(
                "Back to list",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Release Date : ",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      overview,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
