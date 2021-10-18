import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/routers/stactic_routas_nomes.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RutasPage.INICIAL,
      getPages: RutasPage.routas,
    );
  }
}
