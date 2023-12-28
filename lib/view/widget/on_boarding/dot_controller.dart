import 'package:ecommercecourse1/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class CustomDot extends GetView<OnBoardingControllerImp> {
  const CustomDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        const activeColor = Colors.blue;
        const inactiveColor = Colors.white;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onBoardingList.length,
                (index) {
              final isActive = controller.currentPage == index;
              final color = isActive ? activeColor : inactiveColor;

              return AnimatedContainer(
                margin: const EdgeInsets.only(right:7),
                duration: const Duration(milliseconds: 200),
                width: isActive ? 20 : 10,
                height: 8,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3.5),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

