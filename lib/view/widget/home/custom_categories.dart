import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse1/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../controller/home_controller.dart';
import '../../../data/model/categoriesmodel.dart';

class CustomCategories extends GetView<HomeControllerImp> {
  const CustomCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // عدد الأعمدة
          crossAxisSpacing: 3.0, // المسافة الأفقية بين الحاويات
          mainAxisSpacing: 4,
          childAspectRatio: 0.5, // نسبة العرض إلى الارتفاع
          mainAxisExtent: 200, // ارتفاع الحاوية
        ),
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          if (index == 1) {
            // إضافة مسافة عمودية للعمود الوسط
            return Container(
              height: 200,
              padding: const EdgeInsets.only(
                top:0 ,
                // المسافة العمودية
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CategoriesHome(
                  i: index,
                  categoriesModel: CategoriesModel.fromJson(controller.categories[index]),
                ),
              ),
            );
          }
          return ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CategoriesHome(
              i: index,
              categoriesModel: CategoriesModel.fromJson(controller.categories[index]),
            ),
          );
        },
      ),
    );
  }
}


class CategoriesHome extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const CategoriesHome({Key? key, required this.categoriesModel, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!, categoriesModel.categoriesId.toString());
        },

        child:Card(
            shadowColor: Colors.blue,
            elevation: 3, // يمكنك تعديل هذه القيمة حسب مستوى الظل الذي تريده
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6), // تحديد نصف قطر الزوايا المقوسة
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Container(
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: CachedNetworkImage(
                  //     imageUrl: "${AppLink.imageCategories}/${categoriesModel.descriptionImage}",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150), // قم بتعديل هذه القيمة حسب الارتفاع الإضافي الذي ترغب فيه
                    child: Align(
                      alignment: Alignment.bottomCenter, // توجيه العناصر إلى الأسفل
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),

                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
