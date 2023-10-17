import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), // Widget ini akan menampilkan lingkaran yang bergerak seperti loading
            SizedBox(
                height:
                    100), // Memberikan jarak antara CircularProgressIndicator dan Image
            Image.asset(
              "assets/mm2.png",
              width: 80,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
