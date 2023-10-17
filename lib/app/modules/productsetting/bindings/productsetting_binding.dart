import 'package:get/get.dart';

import '../controllers/productsetting_controller.dart';

class ProductsettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsettingController>(
      () => ProductsettingController(),
    );
  }
}
