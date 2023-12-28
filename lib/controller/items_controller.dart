import 'package:ecommercecourse1/data/model/items_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../core/class/status_request.dart';
import '../core/functions/handlingdata_controller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/items_data.dart';
import 'home_controller.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val);
  getItems(String categoryid);
  goToProductPage(ItemsModel itemsModel);
}

class ItemsControllerImp extends SearchMixController {
  List categories = [] ;
  String?  catid ;
  int? selectedCat ;



  ItemsData testData = ItemsData(Get.find()) ;

  List data = [];  //متغير يخزن الداتا من الباكيند

  late StatusRequest statusRequest ;

  MyServices myServices = Get.find();

  @override
  void onInit() {
    search = TextEditingController();
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }

  @override
  getItems( categoryid) async {
    statusRequest = StatusRequest.loading ;
    var response = await testData.getData(categoryid , myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response) ;
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure ;
      }
    }
    update();
  }

  @override
  goToProductPage(itemsModel) {
    Get.toNamed("product", arguments: {"itemsmodel": itemsModel});
  }
}