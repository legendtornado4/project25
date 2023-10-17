import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/productsetting_controller.dart';

class ProductsettingView extends GetView<ProductsettingController> {
  const ProductsettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsettingView'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Galeri'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                controller.saveImage();
              },
            ),

            ListTile(
              title: Text('camera'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                controller.saveImageC();
              },
            ),
            Obx(() {
              if (controller.selectedImage.value != null) {
                return Image.file(controller.selectedImage.value!);
              } else {
                return Container();
              }
            }),
            // Tambahkan lebih banyak ListTile di sini untuk opsi pengaturan lainnya
          ],
        ).toList(),
      ),
    );
  }
}
