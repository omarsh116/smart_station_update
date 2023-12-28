import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  final String text;

  const CustomButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      padding: const EdgeInsets.only(bottom: 5),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.topLeft,
          colors: [Color(0xFF0071ED), Color(0x870071ED)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          controller.next();
        },
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: "Cairo",
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}



