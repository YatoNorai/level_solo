import 'package:level_solo/app/injector/models/home_model.dart';

class HomeAdapter {
  static Map<String, dynamic> toMap(HomeModel model) {
    return {
      'animeImage': model.animeImage,
      'animeName': model.animeName,
      'animeLink': model.animeLink
    };
  }

  static HomeModel fromMap(Map<String, dynamic> map) {
    return HomeModel(
      animeImage: map['animeImage'],
      animeName: map['animeName'],
      animeLink: map['animeLink'],
    );
  }
}
