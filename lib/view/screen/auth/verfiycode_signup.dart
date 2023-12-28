import 'package:ecommercecourse1/controller/auth/verfiy_signup_controller.dart';
import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../core/constant/dimensions.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerfiyCodeSignUpControllerImp());
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: GetBuilder<VerfiyCodeSignUpControllerImp>(
          builder: (controller)=>
              HandlingDataRequest(statusRequest: controller.statusRequest, widget: Column(
                  children:[
                    const SizedBox(height: 20),
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
                    OtpTextField(
                      borderRadius: BorderRadius.circular(10),
                      enabledBorderColor: Colors.blue,
                      fieldWidth: 65,
                      numberOfFields: 4,
                      borderColor: Colors.blue,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        controller.goToSuccessSignUp(verificationCode);
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),
                    const SizedBox(height: 30),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap :(){
                              controller.reSend();
                            },
                            child: const Text(
                              'أعادة ارسال',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF0064EB),
                                fontSize: 15,
                                fontFamily: 'myfontmed',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'الم تستلم رمز التحقق؟',
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
                    const SizedBox(height: 60),
                    //CustomButtonAuth(text: "تحقق", onPressed: () { })
                  ]
              )))
      ),
    );
  }
}
