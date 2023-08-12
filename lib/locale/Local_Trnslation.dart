import 'dart:ui';

import 'package:get/get.dart';
import 'package:translation/main.dart';

class MylocalController extends GetxController{

Locale  intialling=sharedPreferences!.getString("codelang") == "ar" ? Locale("ar"):Locale("en");
  void changelang( String codelang)
  {
    Locale locale=Locale(codelang);
  sharedPreferences!.setString("codelang",codelang);
     Get.updateLocale(locale);
  }
}