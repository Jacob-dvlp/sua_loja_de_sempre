import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/screen/sobre-puma/controllerpuma.dart';
import 'package:previsao_de_tempo/widgets/custom.dart';

class SobreItem extends StatelessWidget {
  const SobreItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controllerpuma>(
      init: Controllerpuma(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: Text(_.data[0]),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.yellow[900],
              ),
              width: Get.width,
              child: Image.asset(
                _.data[1],
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Adidas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Card(
                          child: Container(
                            height: 35,
                            width: 120,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.shopping_cart),
                                  Text(
                                    "Comprar",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Tamanho disponíveis",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardsTamanho(
                          colorcard: Colors.yellow[900],
                          tamanho: 6,
                          colorstext: Colors.white,
                        ),
                        CardsTamanho(
                          colorcard: Colors.white,
                          tamanho: 7,
                          colorstext: Colors.black,
                        ),
                        CardsTamanho(
                          colorcard: Colors.white,
                          tamanho: 8,
                          colorstext: Colors.black,
                        ),
                        CardsTamanho(
                          colorcard: Colors.white,
                          tamanho: 9,
                          colorstext: Colors.black,
                        ),
                        CardsTamanho(
                          colorcard: Colors.white,
                          tamanho: 10,
                          colorstext: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Cores disponíveis",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CardsCor(
                          colorcard: Colors.red,
                        ),
                        CardsCor(
                          colorcard: Colors.orange,
                        ),
                        CardsCor(
                          colorcard: Colors.blue,
                        ),
                        CardsCor(
                          colorcard: Colors.pink,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
