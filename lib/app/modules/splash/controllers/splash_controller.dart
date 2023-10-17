import 'package:get/get.dart';
import 'package:project25/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(Routes.HOME);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
