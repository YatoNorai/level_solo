import 'package:level_solo/app/injector/atoms/home_atoms.dart';
import 'package:level_solo/app/injector/models/home_model.dart';
import 'package:level_solo/app/injector/repositories/home_repository.dart';

import '../../injector.dart';

Future<List<HomeModel>> fecthLastAnimes() async {
  final repository = injector.get<HomeRepository>();
  return lastAnimesState.value = await repository.getLastAnimes();
}

Future<List<HomeModel>> fecthTopAnimes() async {
  final repository = injector.get<HomeRepository>();
  return topAnimesState.value = await repository.getTopAnimes();
}

Future<List<HomeModel>> fecthTendingAnimes() async {
  final repository = injector.get<HomeRepository>();
  return trendingAnimesState.value = await repository.getTrendinganimes();
}

Future<List<HomeModel>> fecthUpdatedAnimes() async {
  final repository = injector.get<HomeRepository>();
  return updatedAnimesState.value = await repository.getUpdatedAnimes();
}

Future<List<HomeModel>> fecthDubladosAnimes() async {
  final repository = injector.get<HomeRepository>();
  return dubladoAnimesState.value = await repository.getDubladosAnimes();
}

Future<List<HomeModel>> fecthLegendadosAnimes() async {
  final repository = injector.get<HomeRepository>();
  return legendadosAnimesState.value = await repository.getLegendadosAnimes();
}
