import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/screen/Categoria/controllerCategory.dart';
import 'package:previsao_de_tempo/widgets/custom.dart';

class Categroytwo extends StatelessWidget {
  const Categroytwo({Key? key}) : super(key: key);

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
                      imagem:
                          "assets/nike/air-force-1-older-shoes-xjblV7-removebg-preview.png",
                      marca: "Nike Air Force",
                      valor: "50.000",
                    ),
                    CardCatalogo(
                      imagem:
                          "assets/nike/air-max-90-premium-mens-shoes-PM9RVw-removebg-preview.png",
                      marca: "Nike Air Max",
                      valor: "54.000",
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
                      imagem:
                          "assets/nike/nike_adapt_bb_ab-removebg-preview.png",
                      marca: "Nike Adapt",
                      valor: "80.000",
                    ),
                    CardCatalogo(
                      imagem:
                          "assets/nike/tenis-nike-revolution-5-masculino-BQ3204-400-14-removebg-preview.png",
                      marca: "Nike  Revolution",
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
