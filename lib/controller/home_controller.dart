import 'package:ecommercecourse1/core/constant/routes.dart';
import 'package:ecommercecourse1/data/model/items_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../core/class/status_request.dart';
import '../core/functions/handlingdata_controller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/home.dart';

abstract class  HomeController extends SearchMixController {

  initialData();
  getData();
  goToItems(List categories, int selectedCat ,String categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  @override
  HomeData  homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  List items = [];
  // List items = [];

  @override
  initialData() {

    username = myServices.sharedPreferences.getString("username") ;
    id = myServices.sharedPreferences.getString("id") ;
  }

  @override
  void onInit() {
    search = TextEditingController();
    getData();
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        //categories.addAll(response['categories']);
        // items.addAll(response['items']);
        categories.addAll(response['categories']); //المفروض هاي تعمل علمود الكارت يشتغل
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure ;
      }
    }
    update();
  }

  @override
  goToItems( categories , selectedCat , categoryid ) {
    Get.toNamed(AppRoute.items , arguments: {
    "categories": categories ,
    "selectedcat": selectedCat ,
      "catid" : categoryid ,
    });
  }

  goToProductPage(itemsModel) {
    Get.toNamed("product", arguments: {"itemsmodel": itemsModel});
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];
  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());

  searchData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.searchData(search!.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        listdata.clear();
        List responsedata = response['data'];
        listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  TextEditingController? search;
  bool isSearch = false;

  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    searchData();
    update();
  }
}