import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/routers/stactic_routas_nomes.dart';
import 'package:previsao_de_tempo/screen/Categoria/controllerCategory.dart';
import 'package:previsao_de_tempo/widgets/custom.dart';

class CategroyOne extends StatelessWidget {
  const CategroyOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controllercategory>(
      init: Controllercategory(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow[900],
            title: Text(_.data[0]),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Adidas",
                        "assets/adidas/add_3-removebg-preview.png"
                      ],
                      imagem: "assets/adidas/add_3-removebg-preview.png",
                      marca: "Adidas",
                      valor: "50.000",
                    ),
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Adidas",
                        "assets/adidas/adidas_3-removebg-preview.png"
                      ],
                      imagem: "assets/adidas/adidas_3-removebg-preview.png",
                      marca: "Adidas",
                      valor: "50.000",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Adidas Yeezy",
                        "assets/adidas/adidas-yeezy-450-dark-slate-release-date-price-012-removebg-preview.png"
                      ],
                      imagem:
                          "assets/adidas/adidas-yeezy-450-dark-slate-release-date-price-012-removebg-preview.png",
                      marca: "Adidas Yeezy",
                      valor: "80.000",
                    ),
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Adidas 4D Run",
                        "assets/adidas/Tenis_adidas_4D_Run_1.0_Branco_EG6264_01_standard-removebg-preview.png"
                      ],
                      imagem:
                          "assets/adidas/Tenis_adidas_4D_Run_1.0_Branco_EG6264_01_standard-removebg-preview.png",
                      marca: "Adidas 4D Run",
                      valor: "60.000",
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
