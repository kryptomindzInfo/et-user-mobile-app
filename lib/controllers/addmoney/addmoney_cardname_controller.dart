import 'package:get/get.dart';

class CardFieldsController extends GetxController {
  var cardNumber = ''.obs;
  var expiry = ''.obs;
  var cvv = ''.obs;

  bool get areTextFieldsFilled =>
      cardNumber.isNotEmpty && expiry.isNotEmpty && cvv.isNotEmpty;
}
