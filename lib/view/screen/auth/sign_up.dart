import 'package:ecommercecourse1/controller/auth/signup_controller.dart';
import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:ecommercecourse1/core/functions/alert_exit_app.dart';
import 'package:ecommercecourse1/core/functions/valid_input.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_button_auth.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_text_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/dimensions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(SignUpControllerImp());
    return  Scaffold(
      backgroundColor: Colors.white,

    body:WillPopScope(
        onWillPop: alertExitApp,
        child:GetBuilder<SignUpControllerImp>(
            builder: (controller) =>
                HandlingDataRequest(statusRequest: controller.statusRequest, widget:  Container(
       padding: const EdgeInsets.symmetric(vertical: 60
        , horizontal: 30),
           child: Form(
             key: controller.formstate,
              child: SingleChildScrollView(child: Column(
                children:[
                 Container(
                  height: Dimensions.height120,
                  child:  Center(
                   child: Container(
                    height:  500,
                     width: 500,
                     child: Image.asset(AppImageAssets.logo,)
                    ),
                   ),
                  ),
                 const SizedBox(height: 25),
                 Container(child:
                 CustomTextAuth(
                  isNumber: false,
                  valid: (val){
                   return validInput(val!, 2, 20, "username");
                  },
                  mycontroller: controller.username,
                  hinttext: 'الاسم الشخصي', iconData: Icons.person_outline_rounded,),
                 ),
                 Container(child:
                 CustomTextAuth(
                  isNumber: false,
                  valid: (val) {
                   return validInput(val!, 5, 50, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: 'البريد الالكتروني', iconData: Icons.email_outlined,),
                 ),
                 Container(child:
                 CustomTextAuth(
                  isNumber: true,
                  valid: (val){
                   return validInput(val!, 5, 20, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: 'رقم الهاتف', iconData: Icons.phone_enabled_outlined,),
                 ),
                 Container(child:
                 CustomTextAuth(
                  isNumber: false,
                  valid: (val){
                   return validInput(val!, 6, 20, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: 'كلمة المرور', iconData: Icons.lock_open_outlined,),
                 ),
                 const SizedBox(height: 45),
                 CustomButtonAuth(text: "انشاء حساب",onPressed: () {controller.signUp(); }),
                 const SizedBox(height: 70),
                 Text(
                  'لديك حساب  ؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                   color: Colors.black.withOpacity(0.6499999761581421),
                   fontSize: 18,
                   fontFamily: 'myfontmed',
                   fontWeight: FontWeight.w500,
                   letterSpacing: 0.33,
                  ),
                 ),
                 InkWell(
                  onTap:() {
                   controller.goToSignIn();
                  },
                  child:const Text(
                   'تسجيل الدخول',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    color: Color(0xFF1D5F9A),
                    fontSize: 15,
                    fontFamily: 'myfontmed',
                    fontWeight: FontWeight.w500,
                    //decoration: TextDecoration.underline,
                   ),
                  ),
                 )
                ]
            ),)
       ),
      ))
    )
    ));
  }
}
