import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:ecommercecourse1/view/widget/home/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../widget/home/custom_categories.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp> (
        builder: (controller) => HandlingDataView (
            statusRequest: controller.statusRequest,
            widget: Container (
                margin: const EdgeInsets.only(top: 27),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column (
                  children: [
                    //const SizedBox(height: 0),
                    //Container(child: Text("${controller.username}")),
                    const CustomAppBar(titleappbar: "آلاقسام"),
                    //const SizedBox(height: 20),
                    Card(
                      shadowColor: Colors.blue,
                      elevation: 3, // يمكنك تعديل هذه القيمة حسب مستوى الظل الذي تريده
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    const CustomCategories(),
                  ],
                ))));
  }
}