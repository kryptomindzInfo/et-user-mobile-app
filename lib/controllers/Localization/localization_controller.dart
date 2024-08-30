import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var selectedLocale = Locale('en'); // Default language is English

  void changeLanguage(Locale newLocale) {
    selectedLocale = newLocale;
    Get.updateLocale(newLocale);
    // update(); // Notify listeners
  }
}
