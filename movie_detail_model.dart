class MovieDetailModel {
  final String title;
  final int id;
  final String poster;
  final double grade;
  final String bgposter;
  final String date;

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        id = json['id'],
        grade = json['vote_average'],
        poster = json['poster_path'],
        bgposter = json['backdrop_path'],
        date = json['release_date'];
}
