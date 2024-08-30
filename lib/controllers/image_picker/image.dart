import 'package:et_bank/ui/screens/identity%20flow/Circularprogress2.dart';
import 'package:et_bank/ui/screens/identity%20flow/circularprogress3.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// Add this import for the File class

class ImagePickerController extends GetxController {
  RxString imagepath = "".obs;
  RxString imagepathforlicense = "".obs;
  RxString imagepathforbacklicense = "".obs;

  RxBool isImageLoading = false.obs;

  Future<void> pickImageFromCameraWithLoading() async {
    isImageLoading.value = false;
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    isImageLoading.value = true;
    await Future.delayed(Duration(seconds: 2)); // Delay for 5 seconds

    isImageLoading.value = false;

    if (image != null) {
      imagepath.value = image.path;
    }
  }

  Future<void> pickImageforlicense() async {
    isImageLoading.value = false;

    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    isImageLoading.value = true;
    await Future.delayed(Duration(seconds: 1)); // Delay for 5 seconds
    Get.to(MyCircularProgressIndicator2());
    isImageLoading.value = false;

    if (image != null) {
      imagepathforlicense.value = image.path;
    }
  }

  Future<void> pickImageforbacklicense() async {
    isImageLoading.value = false;

    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    isImageLoading.value = true;
    await Future.delayed(Duration(seconds: 1)); // Delay for 5 seconds
    Get.to(MyCircularProgressIndicator3());
    isImageLoading.value = false;

    if (image != null) {
      imagepathforbacklicense.value = image.path;
    }
  }
}
