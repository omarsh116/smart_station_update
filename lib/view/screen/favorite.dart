import 'package:ecommercecourse1/view/widget/favorite/custom_favorite.dart';
import 'package:ecommercecourse1/view/widget/home/custom_appbar.dart';
import 'package:ecommercecourse1/view/widget/home/custom_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../controller/myfavorite_controller.dart';
import '../../core/class/handlingdata_view.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
       // padding:const EdgeInsets.only(left: 25),
        child: GetBuilder<HomeControllerImp>(
            builder: ((controller) => ListView(children: [
              const CustomAppBar(
                titleappbar: "عملائنا",
              ),
              HandlingDataView (
                  statusRequest: controller.statusRequest,
                  widget: Container (
                      margin: const EdgeInsets.only(top: 27),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Column (
                          children: [
                            Card(
                              shadowColor: Colors.blue,
                              elevation: 3, // يمكنك تعديل هذه القيمة حسب مستوى الظل الذي تريده
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            const CustomCategories(),
                          ],
                        ),
                      )))
            ]))),
      ),
    );
  }
}