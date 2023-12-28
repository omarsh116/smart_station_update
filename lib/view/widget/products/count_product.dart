import 'package:ecommercecourse1/core/constant/color.dart';
import 'package:flutter/material.dart';

class CountProduct extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String price;
  final String count;
  const CountProduct(
      {Key? key,
        required this.onAdd,
        required this.onRemove,
        required this.price,
        required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          height: 40,
          decoration: ShapeDecoration(color: AppColor.white,
            shadows: const [
               BoxShadow(color: Color(0x3f000000),
                  blurRadius: 4, offset: Offset(0,4),spreadRadius: 0,
            )],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
          ),
          child: Center(
            child: Text(
              "$price \$",
              style: const TextStyle(
                  color: AppColor.Black, fontSize: 20, height: 1.1),
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: 40,
           decoration: ShapeDecoration(color: AppColor.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
             shadows: const [
               BoxShadow(color: Color(0x3f000000),
                 blurRadius: 4, offset: Offset(0,4),spreadRadius: 0,
               )],
        ),

           child: Row(
            children: [
              IconButton(onPressed: onAdd , icon: const Icon(Icons.add),color: AppColor.Black,),
              Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      count,
                      style: const TextStyle(fontSize: 20, height: 1.1,color: AppColor.Black),
                    ),
                  ),
              IconButton(onPressed: onRemove , icon: const Icon(Icons.remove,color: AppColor.Black,)),
            ],
          ),
    )],
    );
  }
}