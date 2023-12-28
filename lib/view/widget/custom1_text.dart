import 'package:flutter/material.dart';

class CustomText1 extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final bool? obscureText;
  final int? maxLines;
  final int? maxLength;

  const CustomText1({
    Key? key,
    this.obscureText,
    required this.hinttext,
    required this.iconData, this.maxLines, this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        maxLines:maxLines ,
        maxLength: maxLength,
        cursorHeight: 35,
        cursorColor: Colors.blue ,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14,color: Colors.white),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          suffixIcon: InkWell(child: Icon(iconData,color: Colors.white70,)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white ), // اللون عندما لا يكون في حالة التركيز
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue), // اللون عندما يكون في حالة التركيز
          ),
        ),
      ),
    );
  }
}