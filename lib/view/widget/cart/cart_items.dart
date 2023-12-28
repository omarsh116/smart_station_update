import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse1/linkapi.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CartItems extends StatelessWidget {
  final String name ;
  final String price  ;
  final String count   ;
  final String imagename   ;
  final void Function()? onAdd ;
  final void Function()? onRemove ;
  const CartItems({Key? key, required this.name, required this.price, required this.count, required this.imagename,required this.onAdd,required this.onRemove , }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Expanded(
            flex: 2,
            child: Container(
              height: 90,
              width: 20,
              child: CachedNetworkImage(imageUrl: "${AppLink.imageItems}/$imagename",),
            )),
        Expanded(
            flex: 3,
            child: ListTile(
              title: Text(name, style: const TextStyle(fontSize: 15)),
              subtitle: Text(price,
                  style:
                  const TextStyle(color: AppColor.primaryColor, fontSize: 17)),
            )),
        Expanded(
            child: Column(
              children: [
                SizedBox(
                    height: 35,
                    child: IconButton(onPressed: onAdd, icon: const Icon(Icons.add))),
                SizedBox(
                    height: 30,
                    child: Text(
                      count,
                      style: const TextStyle(fontFamily: "sans"),
                    )),
                SizedBox(
                    height: 25,
                    child: IconButton(onPressed: onRemove, icon: const Icon(Icons.remove)))
              ],
            ))
      ]),
    );
  }
}