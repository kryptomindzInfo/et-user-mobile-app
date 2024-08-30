import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:get/get.dart';

class PlasticCardController extends GetxController {
  final RxInt currentIndex = 0.obs;

  final List<Map<String, dynamic>> cardData = [
    {
      'image': AppAssets.plastic,
      'title': MyText.plas,
      'description': MyText.ourplastic,
      'image2': AppAssets.greencircle,
      'fee': MyText.plasticfee,
      'buttonText': MyText.getplastic,
    },
    {
      'image': AppAssets.metal,
      'title': MyText.met,
      'description': MyText.ourmet,
      'image2': AppAssets.yellowcircle,
      'fee': MyText.metalpro,
      'buttonText': MyText.getmet,
    },
    {
      'image': AppAssets.paltinum,
      'title': MyText.pla,
      'description': MyText.ourpla,
      'image2': AppAssets.whitecircle,
      'fee': MyText.Ultraplan,
      'buttonText': MyText.getplatinum,
    },
  ].obs;

  void onIndexChanged(int index) {
    currentIndex.value = index;
 update();
  }
}
