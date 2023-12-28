import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class VerfiyController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerfiyControllerImp extends VerfiyController {

  late String verfiycode  ;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }


}