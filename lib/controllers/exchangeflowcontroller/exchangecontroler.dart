import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BupgpbController extends GetxController {
  double container1Top = 0.0;
  double container2Top = 100.0;
  bool isContainer1Visible = true;
  String textValue = MyText.buygbp;
        String imagePath = AppAssets.uparrow;

  void toggleContainers() {
    if (isContainer1Visible) {
    
      textValue = MyText.buygbp;
      imagePath= AppAssets.uparrow;
  
    } else {
    
      textValue = MyText.sellgbp;
       imagePath= AppAssets.downarrow;
    }
    isContainer1Visible = !isContainer1Visible;
    update(); 
  }

 final RxBool limitExceeded = false.obs;
  final RxBool limitExceeded2 = false.obs;
    final RxBool limitExceeded3 = false.obs;
     final RxBool limitExceeded4 = false.obs;
  final RxString errorText = ''.obs;
    final RxString errorText2 = ''.obs;
      final RxString errorText3 = ''.obs;
            final RxString errorText4 = ''.obs;
  

  void validateValue(int maxLimit, String value) {
  

    final enteredValue = int.tryParse(value);
    if (enteredValue == null || enteredValue > maxLimit) {
      limitExceeded.value = true;
      errorText.value = 'exceeds Balance';

    } else {
      limitExceeded.value = false; 
  
    }
    
  }


  void validateValue2(int maxLimit, String value) {
  

    final enteredValue = int.tryParse(value);
    if (enteredValue == null || enteredValue > maxLimit) {
      limitExceeded2.value = true;
      errorText2.value = 'exceeds Balance';

    } else {
      limitExceeded2.value = false; 
  
    }
    
  }


  void validateValue3(int maxLimit, String value) {
  

    final enteredValue = int.tryParse(value);
    if (enteredValue == null || enteredValue > maxLimit) {
      limitExceeded3.value = true;
      errorText3.value = 'exceeds Balance';

    } else {
      limitExceeded3.value = false; 
  
    }
   
  }

   void validateValue4(int maxLimit, String value) {
  

    final enteredValue = int.tryParse(value);
    if (enteredValue == null || enteredValue > maxLimit) {
      limitExceeded4.value = true;
      errorText3.value = 'exceeds Balance';

    } else {
      limitExceeded4.value = false; 
  
    }
    
  }
}


