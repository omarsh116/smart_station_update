import 'package:ecommercecourse1/controller/test_controller.dart';
import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Title"),
      backgroundColor: Colors.cyan),
      body: GetBuilder<TestController>(builder: (controller) {
      return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              }));
      }),
    );
  }
}