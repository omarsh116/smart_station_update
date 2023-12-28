import 'package:ecommercecourse1/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar ;
  final void Function()? onPressedIcon ;
  final void Function()? onPressedBack ;
  const CustomAppBar({Key? key, required this.titleappbar, this.onPressedIcon, this.onPressedBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child:// Row(
        //children: [
          // Container(
          //   height: 45,
          //   width: 45,
          //   decoration: BoxDecoration(
          //     color: AppColor.mainColor,
          //     //color: Color.fromRGBO(105, 105, 105, 0.5), // (0.5 تمثل نصف الشفافية)
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          //   padding: const EdgeInsets.only(right: 5),
          //   child: IconButton(
          //     onPressed: (){
          //       Get.back();
          //     },
          //     icon: const Icon(
          //       Icons.arrow_back_ios_new,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          // const SizedBox(width: 83),
          Center(
            child: Text(
              titleappbar,
              style: const TextStyle(
                color:  AppColor.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // const SizedBox(width: 91
          // ),
          // Container(
          //   height: 45,
          //   width:  45,
          //   decoration: BoxDecoration(
          //     color:  AppColor.mainColor,
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          //   padding: const EdgeInsets.symmetric(vertical: 1),
          //   child: IconButton(
          //     onPressed: onPressedIcon,
          //     icon: const Icon(
          //       Icons.shopping_bag_outlined,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //   ),
          // )
        //],
      );
    //);
  }
}