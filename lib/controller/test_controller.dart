import 'package:ecommercecourse1/core/class/status_request.dart';
import 'package:ecommercecourse1/core/functions/handlingdata_controller.dart';
import 'package:ecommercecourse1/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find()) ;

  List data = [];  //متغير يخزن الداتا من الباكيند

  late StatusRequest statusRequest ;

  getData()async {
    statusRequest = StatusRequest.loading ;
    var response = await testData.getData();
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
  void onInit() {
    getData();
    super.onInit();
  }

}
