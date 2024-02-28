import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/main.dart';

class localcontroller extends GetxController {
  Locale locale = sharedpreference.getString("lang") == "ar"
      ? const Locale('ar')
      : const Locale('en');

  void changelang(String langcode) async {
    locale = Locale(langcode);
    sharedpreference.setString("lang", langcode);
    await Get.updateLocale(locale);
  }
}
