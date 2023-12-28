
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/product_controller.dart';

class ProductChoose extends GetView<ProductControllerImp> {
  const ProductChoose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subitems.length,
              (index) => Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: controller.subitems[index]['active'] == "1"
                    ? Colors.blue
                    : Colors.white,
                border: Border.all(color:Colors.blue),
                borderRadius: BorderRadius.circular(360)),
            child: Text(controller.subitems[index]['name'],
                style: TextStyle(
                    color: controller.subitems[index]['active'] == "1"
                        ? Colors.white
                        : Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}