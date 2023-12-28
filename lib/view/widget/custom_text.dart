import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String hinttext;
  //final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomText(
      {Key? key,
        this.obscureText,
        this.onTapIcon,
        required this.hinttext,
        //required this.labeltext,
        required this.iconData,
         required this.mycontroller,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            suffixIcon: InkWell(onTap: onTapIcon, child: Icon(iconData)),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}