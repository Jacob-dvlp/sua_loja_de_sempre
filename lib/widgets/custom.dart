import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CardCatalogo extends StatelessWidget {
  final String? valor;
  final String? imagem;
  final String? marca;
  final String? rota;
  final List? argument;

  const CardCatalogo({
    Key? key,
    this.valor,
    this.imagem,
    this.marca,
    this.rota,
    this.argument,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        child: Container(
          height: 280,
          width: 170,
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite_outline),
                      GestureDetector(
                        onTap: () => Get.toNamed("$rota", arguments: argument),
                        child: Icon(
                          Icons.visibility,
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "$imagem",
                    width: 200,
                    height: 150,
                  ),
                  Text(
                    "$marca",
                    style: TextStyle(fontSize: 19, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$valor Kz",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardCategorias extends StatelessWidget {
  final String? image;
  final Color? color;
  const CardCategorias({
    Key? key,
    this.image,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        color: color,
        child: Image.asset(
          "assets/catalogs/$image",
          width: 100,
        ),
      ),
    );
  }
}

class CardsTamanho extends StatelessWidget {
  final int? tamanho;
  final Color? colorcard, colorstext;
  const CardsTamanho({
    Key? key,
    this.tamanho,
    this.colorcard,
    this.colorstext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 50,
            width: 60,
            color: colorcard,
            child: Center(
              child: Text(
                "US $tamanho",
                style: TextStyle(
                  color: colorstext,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardsCor extends StatelessWidget {
  final Color? colorcard;
  const CardsCor({
    Key? key,
    this.colorcard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 50,
            width: 60,
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 20,
                height: 20,
                color: colorcard ,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
