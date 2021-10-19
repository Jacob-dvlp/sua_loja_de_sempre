import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardCatalogo extends StatelessWidget {
  final String? valor;
  final String? imagem;
  final String? marca;

  const CardCatalogo({
    Key? key,
    this.valor,
    this.imagem,
    this.marca,
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
                      Icon(
                        Icons.visibility,
                        color: Colors.orange,
                      )
                    ],
                  ),
                  Image.asset("$imagem"),
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
