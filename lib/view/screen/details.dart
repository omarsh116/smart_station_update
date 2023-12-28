import 'package:ecommercecourse1/core/class/handlingdata_view.dart';
import 'package:ecommercecourse1/core/constant/color.dart';
import 'package:ecommercecourse1/core/constant/routes.dart';
import 'package:ecommercecourse1/view/widget/products/constant_desc.dart';
import 'package:ecommercecourse1/view/widget/products/count_product.dart';
import 'package:ecommercecourse1/view/widget/products/packages.dart';
import 'package:ecommercecourse1/view/widget/products/product_choose.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllerImp controller =
    Get.put(ProductControllerImp());
    return Scaffold(
        bottomNavigationBar:  Container(
          padding: const EdgeInsets.only(right: 20,left: 20,top: 15),
            height: 80,
            decoration: const ShapeDecoration(
              color: AppColor.mainColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
            ),
            child: GetBuilder<ProductControllerImp>(builder: (controller)=> HandlingDataView(statusRequest: controller.statusRequest, widget:   Column(  children: [
              // CountProduct(
              //     onAdd: () {
              //       controller.add();
              //     }, onRemove: () {
              //       controller.remove();
              // }, price: "${controller.itemsModel.itemsPriceDiscount}", count: "${controller.countitems}"),
              // const SizedBox(height: 5),
              SizedBox(
                height: 50,
                width: 180,
                child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    color: Colors.black, onPressed: () {
                      Get.toNamed(AppRoute.cart);
                },
                    child: Center(
                      child: Row(
                        children: [
                             Image.asset("assets/images/logo.jpg",width: 40,height: 40,),
                          SizedBox(width: 10,),
                          const Text(
                            "آرسال طلب",textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
              ),
            ])))),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                   padding: EdgeInsets.only(top:80),
                  child: Column(
                    children: [
                     TopProductDetails1(),
                      TopProductDetails(),
                    ],
                  )),
              Container(
                //height:399,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        // child:
                        // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        //   Text("${controller.itemsModel.itemsName}",
                        //       style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        //         color: Colors.blue,
                        //       )),
                        //   const SizedBox(height: 10),
                        //   Text(
                        //       "${controller.itemsModel.itemsDescription} ${controller.itemsModel.itemsDescription} ${controller.itemsModel.itemsDescription} ${controller.itemsModel.itemsDescription} ${controller.itemsModel.itemsDescription}",
                        //       style: Theme.of(context).textTheme.bodyLarge),
                        //   const SizedBox(height: 10),
                        //   Text("Color",
                        //       style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        //         color: Colors.blue,
                        //       )),
                        //   const SizedBox(height: 10),
                        //   const ProductChoose()
                        // ]),
                      )
                    ]  ),
                )
          ],
          ),
        ));
  }
}