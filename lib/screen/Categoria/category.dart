import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/screen/Categoria/controllerCategory.dart';
import 'package:previsao_de_tempo/widgets/custom.dart';

class Categroy extends StatelessWidget {
  const Categroy({Key? key}) : super(key: key);

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
                      imagem: "adidas-ten.png",
                      marca: "Adidas",
                      valor: "50.000",
                    ),
                    CardCatalogo(
                      imagem: "adidas-ten.png",
                      marca: "Adidas",
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
