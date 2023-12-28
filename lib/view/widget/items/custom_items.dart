// ignore_for_file: unrelated_type_equality_checks
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse1/controller/favorite_controller.dart';
import 'package:ecommercecourse1/controller/items_controller.dart';
import 'package:ecommercecourse1/data/model/items_model.dart';
import 'package:ecommercecourse1/linkapi.dart';
import 'package:ecommercecourse1/view/widget/icon_glass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  //final bool active ;
  const CustomListItems({Key? key, required this.itemsModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToProductPage(itemsModel);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        //elevation: 3, //مستوى الضل
          child: const Column(
            children: [
              // Container(
              //   padding: const EdgeInsets.only(top: 1,left: 1,right: 1),
              //   child: Stack(
              //     children: [
              //       Center(
              //         child: CachedNetworkImage(
              //           imageUrl: "${AppLink.imageItems}/${itemsModel.itemsImage!}",
              //           height: 170,
              //           fit: BoxFit.cover,
              //           imageBuilder: (context, imageProvider) => Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20), // تقويس الصورة هنا
              //               image: DecorationImage(
              //                 image: imageProvider,
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       if (itemsModel.itemsDiscount != 0 ) Positioned(
              //         top: 10,
              //         left: 5,
              //         child: SizedBox(
              //           height: 50,
              //             width: 40,
              //             child: Image.asset("assets/icons/discount.png")),
              //       ),
              //       Positioned(
              //         top: 0,
              //         left: 125,
              //         child:
              //           GetBuilder<FavoriteController>(builder: (controller)=>
              //               IconButton(onPressed: (){
              //                 if(controller.isFavorite[itemsModel.itemsId] == 1){
              //                   controller.setFavorite(itemsModel.itemsId, 0);
              //                   controller.removeFavorite(itemsModel.itemsId.toString());
              //                 }else{
              //                   controller.setFavorite(itemsModel.itemsId, 1);
              //                   controller.addFavorite(itemsModel.itemsId.toString());
              //                 }
              //               },
              //                   icon: controller.isFavorite[itemsModel.itemsId] == 1
              //                       ?const Icon(Icons.favorite,color: Colors.red,)
              //                       :const IconGlass(imagePath: 'assets/icons/like.png', paddingf: 0)),)
              //       )
              //     ],
              //   ), //صوره ومفضله
              // ),
                 ],
          ),
      ),
    );
  }
}
