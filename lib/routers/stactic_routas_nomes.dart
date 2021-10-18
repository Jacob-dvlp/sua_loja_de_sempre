import 'package:get/get_navigation/get_navigation.dart';
import 'package:previsao_de_tempo/screen/home/ScreenHome.dart';
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
    )
  ];
}
