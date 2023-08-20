class MovieModel {
  final String title;
  final int id;
  final String poster;
  final String bgposter;
  final String overview;
  final String date;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        id = json['id'],
        poster = json['poster_path'],
        bgposter = json['backdrop_path'],
        overview = json['overview'],
        date = json['release_date'];
}
