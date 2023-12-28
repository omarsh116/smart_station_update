import 'package:ecommercecourse1/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/on_boarding/custom_button.dart';
import '../widget/on_boarding/dot_controller.dart';
import '../widget/on_boarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomSlider(),
            Column(
              verticalDirection: VerticalDirection.down,
              children: [
                const Spacer(),
                const CustomDot(),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),  // تحديد الحاشية من الأسفل
                  child: const CustomButton("متابعة"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
