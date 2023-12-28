import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse1/controller/favorite_controller.dart';
import 'package:ecommercecourse1/view/widget/home/custom_appbar.dart';
import 'package:ecommercecourse1/view/widget/items/custom_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../controller/items_controller.dart';
import '../../core/class/handlingdata_view.dart';
import '../../data/model/items_model.dart';
import '../../linkapi.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        //padding:  const EdgeInsets.all(15),
        child: ListView(children: [
              const CustomAppBar(titleappbar: "الخدمات"),
              const SizedBox(height: 10),
               // CustomSearchBar(
               //    mycontroller: controller.search!,
               //    titleappbar: "ابحث هنا" ,
               //   onPressedSearch: (){
               //      controller.onSearchItems();
               //   },
               //   onChanged: (val){
               //      controller.checkSearch(val);
               //   },
               // ),
             // const SizedBox(height: 10),
                Column(
                 children: [
                   Container(
                     padding: const EdgeInsets.all(4),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(100)),
                     child: CircleAvatar(
                       radius: 40,
                       backgroundColor: Colors.grey[100],
                       //backgroundImage: AssetImage(AppImageAsset.avatar),
                     ),
                   ),
                   SizedBox(height: 30,),
                   Text("قسم البرمجة في شركة برمجيات هو الوحدة التنظيمية التي تتخذ من تطوير وصيانة البرمجيات هدفًا رئيسيًا. يشمل هذا القسم مجموعة من المبرمجين والمهندسين البرمجيين الذين يعملون على تحليل احتياجات العملاء وتصميم وتنفيذ الحلول البرمجية بما يتناسب مع تلك الاحتياجات"),
                   SizedBox(height: 30)
                 ],
               ),
         GetBuilder<ItemsControllerImp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget:
              !controller.isSearch ? GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:controller.data.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemBuilder: (BuildContext context, index) {
                    controllerFav.isFavorite[controller.data[index]['items_id']] =controller.data[index]['favorite'];
                    return CustomListItems(
                        itemsModel:
                        ItemsModel.fromJson(controller.data[index]),);
                  })  :
              ListItemsSearch(listdatamodel: controller.listdata)
                ))]),
          ),
        );
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({Key? key, required this.listdatamodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listdatamodel.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.goToProductPage(listdatamodel[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                            child: CachedNetworkImage(
                                imageUrl:
                                "${AppLink.imageItems}/${listdatamodel[index].itemsImage}")),
                        //SizedBox(width: 0),
                        Expanded(
                            flex: 3,
                            child: ListTile(
                              title: Text(listdatamodel[index].itemsName!),
                              subtitle: Text(listdatamodel[index].categoriesName!),
                            )),
                      ],
                    ),
                  )),
            ),
          );
        });
  }
}