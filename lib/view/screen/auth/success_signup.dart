import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../controller/auth/success_signupcontroller.dart';
import '../../widget/auth/custom_button_auth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
    Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center, // توسيط العناصر عموديًا
          children: [
            const SizedBox(height: 60),
            Expanded(
              child: Image.asset(
                AppImageAssets.success,
                fit: BoxFit.contain, // تحافظ على نسبة الأبعاد الأصلية للصورة
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'تم انشاء الحساب بنجاح',
                style: TextStyle(fontFamily: 'myfontbold',fontSize: 22,color:Colors.blueGrey ),
              ),
            ),
            const SizedBox(height: 55),
             CustomButtonAuth(text: "متابعة",onPressed:(){
              controller.goToPageLogin();
            }),
            const SizedBox(height: 230),
          ],
        ),
      ),
    );
  }
}
