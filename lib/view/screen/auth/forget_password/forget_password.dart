import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:ecommercecourse1/core/functions/valid_input.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_button_auth.dart';
import 'package:ecommercecourse1/view/widget/auth/custom_text_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpassword/forrget_password_controller.dart';
import '../../../../core/class/handlingdata_view.dart';
import '../../../../core/constant/dimensions.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
      ),
      body:GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) =>
        HandlingDataRequest( statusRequest: controller.statusRequest, widget:
         Container(
           padding:
         const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
             key: controller.formstate,
           child: SingleChildScrollView(
            child: Column(
              children:[
                SizedBox(
                  height: Dimensions.height120,
                  child:  Center(
                    child: Container(
                        height:  500,
                        width: 500,
                        child: Image.asset(AppImageAssets.logo,)
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Text(
                          'هل نسيت كلمة المرور  ؟',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF1D5F9A),
                            fontSize: 20,
                            fontFamily: 'myfontbold',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.70,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        ', لا تقلق إذا نسيت كلمة المرور الخاصة بك \n يمكنك إعادة تعيينها ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontFamily: 'myfontbold',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.25,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextAuth(
                  isNumber: false,
                  valid: (val){
                      return validInput(val!, 5, 50 , "email");
                  },
                  mycontroller: controller.email,
                  hinttext: 'بريدك الالكتروني', iconData: Icons.email_outlined,),
                const SizedBox(height: 45),
                CustomButtonAuth(text: "ارسال" ,onPressed:() {controller.checkemail();}),
              ]
          ),
        ),
      ),
    ))));
  }
}