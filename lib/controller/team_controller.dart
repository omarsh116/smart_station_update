import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:ecommercecourse/core/functions/handingdatacontroller.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/remote/home_data.dart';
import 'package:ecommercecourse1/data/datasource/remote/team.dart';
import 'package:ecommercecourse1/data/model/team.dart';
import 'package:get/get.dart';

import '../core/class/status_request.dart';
import '../core/functions/handlingdata_controller.dart';
import '../core/services/services.dart';

abstract class  TeamController extends GetxController {
  initialData()  ;
  getdata() ;

}

class TeamControllerImp extends TeamController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

  TeamData homedata = TeamData(Get.find());

  // List data = [];
  List categories = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {

    username = myServices.sharedPreferences.getString("username") ;
    id = myServices.sharedPreferences.getString("id") ;
  }

  @override
  void onInit() {
    getdata() ;
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        team.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure ;
      }
    }
    update();
  }
}