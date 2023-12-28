import 'dart:ui';
import 'package:flutter/material.dart';

class IconGlass extends StatelessWidget {
  final double paddingf;
  final String imagePath;
  final Color? colorf;
  const IconGlass({super.key, required this.imagePath, required this.paddingf,  this.colorf=Colors.white});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(35), // تقويس الدائرة هنا
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3.0, // Horizontal
            sigmaY: 3.0, // Vertical
          ),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey.withOpacity(0.4), // يمكنك تعديل اللون والتعتيم حسب رغبتك
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding:  EdgeInsets.only(right: paddingf),
                child: Image.asset(
                  imagePath,
                  color: colorf,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
        ),
      );
  }
}
