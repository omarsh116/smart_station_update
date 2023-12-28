import 'package:ecommercecourse1/data/datasource/remote/reply_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/class/status_request.dart';
import '../../core/functions/handlingdata_controller.dart';
import '../../core/services/services.dart';

class AddReplyController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;

  ReplyData replyData = ReplyData(Get.find());
  MyServices myServices = Get.find();

  late TextEditingController? title;
  late TextEditingController? description;
  late TextEditingController? url;
  late TextEditingController? state;

  String? image;
  String? video;

  intialData() {
    title = TextEditingController();
    description = TextEditingController();
    url = TextEditingController();

    image = Get.arguments['image'] ?? '';  // إذا لم تكن الصورة متوفرة ستكون القيمة فارغة
    video = Get.arguments['video'] ?? '';  // إذا لم يكن هناك فيديو متاح ستكون القيمة فارغة

  }

  addReply() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await replyData.addData(
        myServices.sharedPreferences.getString("replyid")!,
        title!.text,
        description!.text,
        url!.text,
        state!.text,
        image!,
        video!
    );

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        statusRequest = StatusRequest.success;
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}