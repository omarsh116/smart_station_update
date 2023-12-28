import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String imagePath; // Add imagePath to specify the asset image path
  final double higgg;
  final double wiiii;
  final bool? active;

  const CustomButtonAppBar({
    Key? key,
    required this.imagePath, // Pass the asset image path here
    required this.onPressed,
    required this.active, required this.higgg, required this.wiiii,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   height: 6,
          //   width: 40,
          //   decoration: ShapeDecoration(
          //     color: active == true ? AppColor.mainColor : Colors.white,
          //     shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         bottomRight: Radius.circular(10),
          //       ),
          //     ),
          //   ),
          // ),
          //const SizedBox(height: 5),


            Container(
              width: 45,
              height: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: active == true ? AppColor.mainColor : Colors.white,
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  height: higgg,
                  width: wiiii,// Use the asset image path
                  color: active == true ? Colors.white : Colors.blueGrey,
                  // You can set image color here
                ),
              ),
            ),

        ],
      ),
    );
  }
}
