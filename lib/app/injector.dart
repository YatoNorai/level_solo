import 'package:auto_injector/auto_injector.dart';
import 'package:level_solo/app/data/repositories/web_scrapper_home_repository.dart';
import 'package:level_solo/app/injector/repositories/home_repository.dart';

final injector = AutoInjector();

void registerIntances() {
  injector.add<HomeRepository>(WebScrapperHomeRepository.new);
}
