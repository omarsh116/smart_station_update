/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/checkemail_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custom_button_auth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
    Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),

          CustomButtonAuth(text: "30".tr, onPressed: () {
            controller.goToSuccessSignUp() ;
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}


 */