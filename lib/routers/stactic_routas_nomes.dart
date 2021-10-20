import 'package:get/get_navigation/get_navigation.dart';
import 'package:previsao_de_tempo/screen/Categoria/item/item_tree.dart';
import 'package:previsao_de_tempo/screen/Categoria/item/item_one.dart';
import 'package:previsao_de_tempo/screen/Categoria/item/item_two.dart';
import 'package:previsao_de_tempo/screen/home/ScreenHome.dart';
import 'package:previsao_de_tempo/screen/sobre/about.dart';
import 'package:previsao_de_tempo/screen/splash/Screensplash.dart';

part 'screen_routas.dart';

class RutasPage {
  static const INICIAL = RoutasNome.SPLASH;

  static final routas = [
    GetPage(
      name: RoutasNome.SPLASH,
      page: () => ScreenSplash(),
    ),
    GetPage(
      name: RoutasNome.HOME,
      page: () => HomePage(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: RoutasNome.CATEGORYTREE,
      page: () => Categroytree(),
    ),
    GetPage(
      name: RoutasNome.CATEGORYONE,
      page: () => CategroyOne(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: RoutasNome.CATEGORYTWO,
      page: () => Categroytwo(),
      transition: Transition.zoom,
    ),
     GetPage(
      name: RoutasNome.SOBREITEM,
      page: () => SobreItem(),
      transition: Transition.zoom,
    )
  ];
}
