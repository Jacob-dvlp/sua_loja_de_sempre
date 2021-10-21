import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/routers/stactic_routas_nomes.dart';
import 'package:previsao_de_tempo/screen/Categoria/controllerCategory.dart';
import 'package:previsao_de_tempo/widgets/custom.dart';

class Categroytree extends StatelessWidget {
  const Categroytree({Key? key}) : super(key: key);

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
                        "Puma",
                        "assets/puma/255_255_255-removebg-preview.png"
                      ],
                      imagem: "assets/puma/255_255_255-removebg-preview.png",
                      marca: "Puma",
                      valor: "30.000",
                    ),
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Puma",
                        "assets/puma/101085515_1-1618388154-removebg-preview.png"
                      ],
                      imagem:
                          "assets/puma/101085515_1-1618388154-removebg-preview.png",
                      marca: "Puma",
                      valor: "10.000",
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
                        "Puma",
                        "assets/puma/NWG-1371-038_zoom1-removebg-preview.png",
                      ],
                      imagem:
                          "assets/puma/NWG-1371-038_zoom1-removebg-preview.png",
                      marca: "Puma",
                      valor: "30.000",
                    ),
                    CardCatalogo(
                      rota: RoutasNome.SOBREITEM,
                      argument: [
                        "Detalhes",
                        "Puma Sanack",
                        "assets/puma/puma_sna-removebg-preview.png",
                      ],
                      imagem: "assets/puma/puma_sna-removebg-preview.png",
                      marca: "Puma Sanack",
                      valor: "50.000",
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
