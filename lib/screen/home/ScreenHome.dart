import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/stactic_routas_nomes.dart';
import '../../util/constantes.dart';
import '../../widgets/custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Text(tituloBar),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () =>
                    Get.toNamed(RoutasNome.CATEGORYONE, arguments: ["Adidas"]),
                child: CardCategorias(
                  color: Colors.orange,
                  image: "adidas.png",
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Get.toNamed(RoutasNome.CATEGORYTWO, arguments: ["Nike"]),
                child: CardCategorias(
                  color: Colors.orange,
                  image: "nike.png",
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Get.toNamed(RoutasNome.CATEGORYTREE, arguments: ["Puma"]),
                child: CardCategorias(
                  color: Colors.white,
                  image: "puma.png",
                ),
              )
            ],
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
                    "Adidas",
                    "assets/item/adidas-ten.png"
                  ],
                  imagem: "assets/item/adidas-ten.png",
                  marca: "Adidas",
                  valor: "50.000",
                ),
                CardCatalogo(
                  rota: RoutasNome.SOBREITEM,
                  argument: [
                    "Detalhes",
                    "Puma",
                    "assets/item/puma-item.png",
                  ],
                  imagem: "assets/item/puma-item.png",
                  marca: "Puma",
                  valor: "40.000",
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
                    "Puma snakers",
                    "assets/item/puma_sna-item.png"
                  ],
                  imagem: "assets/item/puma_sna-item.png",
                  marca: "Puma snakers",
                  valor: "30.000",
                ),
                CardCatalogo(
                  rota: RoutasNome.SOBREITEM,
                  argument: [
                    "Detalhes",
                    "Nike Air-Max",
                    "assets/item/air-max-item.png",
                  ],
                  imagem: "assets/item/air-max-item.png",
                  marca: "Nike Air-Max",
                  valor: "46.000",
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
                    "Puma snakers",
                    "assets/item/puma_sna-item.png"
                  ],
                  imagem: "assets/item/puma_sna-item.png",
                  marca: "Puma snakers",
                  valor: "30.000",
                ),
                CardCatalogo(
                  rota: RoutasNome.SOBREITEM,
                  argument: [
                    "Detalhes",
                    "Nike Air-Max",
                    "assets/item/air-max-item.png",
                  ],
                  imagem: "assets/item/air-max-item.png",
                  marca: "Nike Air-Max",
                  valor: "46.000",
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
                    "Adidas",
                    "assets/item/adidas-ten.png"
                  ],
                  imagem: "assets/item/adidas-ten.png",
                  marca: "Adidas",
                  valor: "50.000",
                ),
                CardCatalogo(
                  rota: RoutasNome.SOBREITEM,
                  argument: [
                    "Detalhes",
                    "Puma",
                    "assets/item/puma-item.png",
                  ],
                  imagem: "assets/item/puma-item.png",
                  marca: "Puma",
                  valor: "40.000",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
