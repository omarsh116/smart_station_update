import 'package:ecommercecourse1/controller/homescreen_controller.dart';
import 'package:ecommercecourse1/core/constant/color.dart';
import 'package:ecommercecourse1/view/widget/home/custom_button_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              Row(
                children: [
                  CustomButtonAppBar(
                    onPressed: () {
                      controller.changePage(0);
                    },
                    active: controller.currentpage == 0 ? true : false,
                    imagePath: 'assets/icons/home.png',
                    higgg: 20,
                    wiiii: 20,
                  ),
                  CustomButtonAppBar(
                    onPressed: () {
                      controller.changePage(1);
                    },
                    active: controller.currentpage == 1 ? true : false,
                    imagePath: 'assets/icons/customer-service.png',
                    higgg: 30,
                    wiiii: 45,
                  ),
                  CustomButtonAppBar(
                    imagePath: 'assets/icons/suitcase.png',
                    onPressed: () {
                      controller.changePage(2);
                    },
                    active: controller.currentpage == 2 ? true : false,
                    higgg: 20,
                    wiiii: 20,
                  ),
                  CustomButtonAppBar(
                    imagePath: 'assets/icons/person.png',
                    onPressed: () {
                      controller.changePage(3);
                    },
                    active: controller.currentpage == 3 ? true : false,
                    higgg: 28,
                    wiiii: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: controller.listPage.elementAt(controller.currentpage),
      ),
    );
  }
}
