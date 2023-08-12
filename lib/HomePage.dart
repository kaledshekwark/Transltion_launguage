import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation/locale/Local_Trnslation.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    MylocalController controller=Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("1".tr),),
      body:Column(
        children: [
          Container(
            child: Center(
              child: MaterialButton(onPressed: () {
                controller.changelang("ar");
              },
              color: Colors.cyan
              ,child: Text("2".tr),
              ),

            ),


          )
          , Container(
            child: Center(
              child: MaterialButton(onPressed: () {
                controller.changelang("en");

              },
                color: Colors.cyan
                ,child: Text("3".tr),
              ),

            ),


          )

        ],
      ) ,



    );
  }
}
