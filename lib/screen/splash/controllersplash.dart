import 'package:get/get.dart';
import 'package:previsao_de_tempo/routers/stactic_routas_nomes.dart';

class Controllersplash extends GetxController {

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 6), () {
      Get.offNamed(RoutasNome.HOME);
    });
    super.onInit();
  }
}
