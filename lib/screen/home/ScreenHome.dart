import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:previsao_de_tempo/util/constantes.dart';

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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.orange,
                child: Image.asset(
                  "assets/catalogs/adidas.png",
                  width: 100,
                ),
              ),
              Card(
                color: Colors.orange,
                child: Image.asset(
                  "assets/catalogs/nike.png",
                  width: 100,
                ),
              ),
              Card(
                color: Colors.white,
                child: Image.asset(
                  "assets/catalogs/puma.png",
                  width: 100,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Container(
                    height: 300,
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
                            Image.asset("assets/item/adidas-ten.png"),
                            Text(
                              "adidas",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "50.000 Kz",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 300,
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
                            Image.asset("assets/item/adidas-ten.png"),
                            Text(
                              "adidas",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "50.000 Kz",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
