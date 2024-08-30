
import 'package:get/get.dart';

class stockteslacontroller extends GetxController {

 var selectedIndex = 0.obs;

  void selectIndex(int index) {
    selectedIndex.value = index;
    update();
  }



  RxBool isBuySelected = true.obs;
  RxBool isSellSelected = false.obs;

  void selectBuy() {
    isBuySelected.value = true;
    isSellSelected.value = false;
  }

  void selectSell() {
    isBuySelected.value = false;
    isSellSelected.value = true;
  }


}
