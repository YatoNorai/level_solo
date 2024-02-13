import 'package:level_solo/app/injector/models/home_model.dart';

abstract class HomeRepository {
  Future<List<HomeModel>> getLastAnimes();
  Future<List<HomeModel>> getTrendinganimes();
  Future<List<HomeModel>> getTopAnimes();
  Future<List<HomeModel>> getUpdatedAnimes();
  Future<List<HomeModel>> getDubladosAnimes();
}
