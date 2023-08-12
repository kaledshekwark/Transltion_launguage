import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:translation/HomePage.dart';
import 'package:translation/locale/Local_Trnslation.dart';
import 'package:translation/locale/locale.dart';
SharedPreferences? sharedPreferences;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 sharedPreferences =await SharedPreferences.getInstance();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MylocalController controller=Get.put(MylocalController());

    return GetMaterialApp(
     locale: controller.intialling,
     translations: Mylocal(),

      getPages: [
      GetPage(name: "/", page:()=> Homepage())
       ],

    );
  }
}

