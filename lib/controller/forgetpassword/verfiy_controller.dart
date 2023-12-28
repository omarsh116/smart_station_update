import 'package:ecommercecourse1/core/class/status_request.dart';
import 'package:ecommercecourse1/data/datasource/remote/forgetpassword/verfiycode.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata_controller.dart';

abstract class VerfiyController extends GetxController {
  checkCode();
  goToResetPassword(String verfiycode);
}

class VerfiyControllerImp extends VerfiyController {

  StatusRequest statusRequest = StatusRequest.none;

  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());

  @override
  checkCode() {}

  @override
  goToResetPassword(verfiycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await verifyCodeForgetPasswordData.postData(email!, verfiycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }


}