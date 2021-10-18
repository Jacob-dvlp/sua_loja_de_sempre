import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:previsao_de_tempo/screen/splash/controllersplash.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controllersplash>(
      init: Controllersplash(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    child: Image.asset(
                      "assets/shopping.png",
                      width: 1000,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
