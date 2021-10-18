import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "World Weather Forecast",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/world-gif-unscreen.gif",
                    width: 1000,
                    height: 300,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.green[600],
                color: Colors.blue[900],
              )
            ],
          ),
        ],
      ),
    );
  }
}
