import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProductsettingController extends GetxController {
  get path => null;

  // ...

  var selectedImage = Rx<File?>(null);

  get path_provider => null;

  void saveImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      Get.snackbar("Berhasil", "Gambar telah dipilih");
    } else {
      Get.snackbar("Gagal", "Tidak ada gambar yang dipilih");
    }
  }

  void saveImageC() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      Get.snackbar("Berhasil", "Gambar telah di potret");
    } else {
      Get.snackbar("Gagal", "Batal memotret");
    }
  }
}
