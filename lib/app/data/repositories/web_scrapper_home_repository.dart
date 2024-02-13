import 'package:level_solo/app/data/adapters/home_adpter.dart';
import 'package:level_solo/app/injector/models/home_model.dart';
import 'package:level_solo/app/injector/repositories/home_repository.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
//import 'package:html/dom.dart' as dom;

class WebScrapperHomeRepository implements HomeRepository {
  @override
  Future<List<HomeModel>> getDubladosAnimes() async {
    List<HomeModel> model = [];
    final response = await http
        .get(Uri.parse('https://animefire.plus/lista-de-animes-dublados'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));
        }
      }
    }
    //  print(model.map((e) => e.animeImage));
    return model;
  }

  @override
  Future<List<HomeModel>> getLastAnimes() async {
    List<HomeModel> model = [];
    final response = await http
        .get(Uri.parse('https://animefire.plus/lista-de-animes-dublados'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));
        }
      }
    }
    //print(model.map((e) => e.animeImage));
    return model;
  }

  @override
  Future<List<HomeModel>> getTopAnimes() async {
    List<HomeModel> model = [];
    final response =
        await http.get(Uri.parse('https://animefire.plus/top-animes'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));
        }
      }
    }
    // print(model.map((e) => e.animeImage));
    return model;
  }

  @override
  Future<List<HomeModel>> getTrendinganimes() async {
    List<HomeModel> model = [];
    final response = await http.get(Uri.parse('https://animefire.plus'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      //  print(animeImage);
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      /*   final animeName = document
          .querySelectorAll('div > article > a > div.text-block > h3')
          .map((e) => e.text)
          .toList(); */
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      // print(animeName);
      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));
        }
      }
    }
    // print(model.map((e) => e.animeImage));
    return model;
  }

  @override
  Future<List<HomeModel>> getUpdatedAnimes() async {
    List<HomeModel> model = [];
    final response =
        await http.get(Uri.parse('https://animefire.plus/animes-atualizados'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      /*    final responseLink = await http.get(Uri.parse(animeLink[0]!));

      if (responseLink.statusCode == 200) {
        final document2 = parser.parse(response.body);
        final animeSinopse =
            document2.querySelectorAll('div.div_video_list > a');
        print(animeSinopse.map((e) => e.attributes));
      }
 */
      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));

          //  print(animeLink[i]);
        }
      }
    }
    //  print(model.map((e) => e.animeImage));
    return model;
  }

  @override
  Future<List<HomeModel>> getLegendadosAnimes() async {
    List<HomeModel> model = [];
    final response = await http
        .get(Uri.parse('https://animefire.plus/lista-de-animes-legendados'));
    if (response.statusCode == 200) {
      final document = parser.parse(response.body);
      final animeImage = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['data-src'])
          .toList();
      final animeLink = document
          .querySelectorAll('article > a')
          .map((e) => e.attributes['href'])
          .toList();
      final animeName = document
          .querySelectorAll('article > a > img')
          .map((e) => e.attributes['alt'])
          .toList();

      // Verificando se o número de imagens é igual ao número de nomes de animes
      if (animeImage.length == animeName.length) {
        for (int i = 0; i < animeImage.length; i++) {
          final map = HomeAdapter.toMap(HomeModel(
            animeImage: animeImage[i]!,
            animeName: animeName[i]!,
            animeLink: animeLink[i]!,
          ));
          model.add(HomeModel.fromJson(map));
        }
      }
    }
    // print(model.map((e) => e.animeImage));
    return model;
  }
}
