class HomeModel {
  final String animeImage;
  final String animeName;
  final String animeLink;

  HomeModel({
    required this.animeLink,
    required this.animeImage,
    required this.animeName,
  });

  static HomeModel fromJson(Map<String, dynamic> json) {
    return HomeModel(
        animeImage: json['animeImage'],
        animeName: json['animeName'],
        animeLink: json['animeLink']);
  }
}
