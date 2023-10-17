import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project25/app/modules/splash/bindings/splash_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
    ),
  );
}
