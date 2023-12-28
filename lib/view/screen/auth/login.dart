import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommercecourse1/controller/auth/login_controller.dart';
import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:ecommercecourse1/core/functions/alert_exit_app.dart';
import 'package:ecommercecourse1/core/functions/valid_input.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_button_auth.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_text_auth.dart';
import '../../../core/constant/dimensions.dart';

class Login extends StatelessWidget {
 const Login({super.key});

 @override
 Widget build(BuildContext context) {
  Get.put(LoginControllerImp());

  return Scaffold(
   backgroundColor: Colors.white,
   appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,

   ),
   body: WillPopScope(
    onWillPop: alertExitApp,
    child: GetBuilder<LoginControllerImp>(
     builder: (controller) => HandlingDataRequest(statusRequest: controller.statusRequest, widget:  Container(
       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
       child: Form(
         key: controller.formstate,
         child: SingleChildScrollView(
           child:  Column(
               children: [
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
                 const SizedBox(height: 50),
                 Container(
                   child: CustomTextAuth(
                     isNumber: false,
                     valid: (val) {
                       return validInput(val!, 5, 50, "email");
                     },
                     mycontroller: controller.email,
                     hinttext: 'البريد الالكتروني',
                     iconData: Icons.email_outlined,
                   ),
                 ),
                 Container(
                   child: GetBuilder<LoginControllerImp>(
                     builder: (controller) => CustomTextAuth(
                       isNumber: false,
                       valid: (val) {
                         return validInput(val!, 6, 30, "password");
                       },
                       mycontroller: controller.password,
                       hinttext: 'كلمة المرور',
                       iconData: Icons.lock_open_outlined,
                       obscureText: controller.isshowpassword,
                       onTapIcon: () {
                         controller.showPassword();
                       },
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 35),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       InkWell(
                         onTap: () {
                           controller.goToForgetPassword();
                         },
                         child: const Text(
                           'هل نسيت كلمة المرور ؟',
                           textAlign: TextAlign.left,
                           style: TextStyle(
                             color: Color(0xFF1D5F9A),
                             fontSize: 13.5,
                             fontFamily: 'myfontbold',
                             fontWeight: FontWeight.w600,
                             letterSpacing: 0.25,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(height: 50),
                 CustomButtonAuth(text: "تسجيل الدخول", onPressed: () {
                   controller.login();
                 }),
                 const SizedBox(height: 35),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Row(
                     children: [
                       Expanded(
                         child: Divider(
                           thickness: 1,
                           color: Colors.grey,
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10),
                         child: Text(
                           '',
                           style: TextStyle(fontFamily: 'myfontbold', fontSize: 18),
                         ),
                       ),
                       Expanded(
                         child: Divider(
                           thickness: 1,
                           color: Colors.grey,
                         ),
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(height: 15),
                 Text(
                   'ليس لديك حساب ؟',
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
                   onTap: () {
                     controller.goToSignUp();
                   },
                   child: const Text(
                     'سجل حسابك ',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xFF1D5F9A),
                       fontSize: 15,
                       fontFamily: 'myfontmed',
                       fontWeight: FontWeight.w500,
                       decoration: TextDecoration.underline,
                     ),
                   ),
                 ),
               ],
             ),
         ),
       ),
     ),)
    ),
   ),
  );
 }
}
