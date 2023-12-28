import 'package:ecommercecourse1/core/class/status_request.dart';
import 'package:ecommercecourse1/core/constant/routes.dart';
import 'package:ecommercecourse1/core/functions/handlingdata_controller.dart';
import 'package:ecommercecourse1/data/datasource/remote/auth/verfiycodesignup.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());

  String? email;
  StatusRequest statusRequest =StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp( verfiyCodeSignUp) async{
      statusRequest = StatusRequest.loading;
      update();
      var response = await verfiyCodeSignUpData.postData(email!, verfiyCodeSignUp);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.successSignUp);
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Verfiy Code Not Correct");
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

  reSend(){
    verfiyCodeSignUpData.resendData(email!);
  }

}