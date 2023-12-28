import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:ecommercecourse1/core/functions/valid_input.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_button_auth.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_text_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpassword/resetpassword_controller.dart';
import '../../../../core/class/handlingdata_view.dart';
import '../../../../core/constant/dimensions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text ('Title')
      ),

      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest,
         widget: Container(
        padding:
         const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
         child:  Form(
         key: controller.formstate,
          child: SingleChildScrollView(
           child: Column(
              children:[
                SizedBox(
                  height: Dimensions.height120,
                  child:  Center(
                      child:
                      Container(
                        height: 1000,
                        width: 1000,
                        child: Image.asset(AppImageAssets.logo),
                      )
                  ),
                ),
                const SizedBox(height: 70),
                CustomTextAuth(
                  isNumber: false,
                  valid: (val){
                    return validInput(val!, 6, 20, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: 'الرمز الجديد', iconData: Icons.lock_open_outlined,),
                CustomTextAuth(
                  isNumber: false,
                  valid: (val){
                    return validInput(val!, 6, 20, "password");
                  },
                  mycontroller: controller.repassword,
                  hinttext: 'تاكيد الرمز الجديد', iconData: Icons.lock_open_outlined,),
                const SizedBox(height: 70),
                CustomButtonAuth(text: "اعادة تعيين",onPressed: () {controller.goToSuccessResetPassword(); })
              ]
          ),
        ),
      ),
    ))));
  }
}
