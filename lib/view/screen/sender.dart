
import 'package:ecommercecourse1/view/widget/custom1_text.dart';
import 'package:flutter/material.dart';


class SendersDetails extends StatelessWidget {
  const SendersDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اضف الرد المناسب'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        child: const Column(
          children:[ CustomText1(hinttext: "عنوان الرد", iconData: Icons.save_as_sharp),
           CustomText1(hinttext: "وصف المشكة", iconData: Icons.save_as_sharp),
           CustomText1(hinttext: "url", iconData: Icons.save_as_sharp),
          ]),
      ),
      );
}}

/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/reply_controller.dart';
import '../../core/class/handlingdata_view.dart';
import '../widget/auth/custom_button_auth.dart';
import '../widget/auth/custom_text_auth.dart';


class SendersDetails extends StatelessWidget {
  const SendersDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddReplyController controller = Get.put(AddReplyController());

    // التحقق من وجود بيانات ووجود مفتاح "image" و "video"
    Map? arguments = Get.arguments;
    String? image = arguments?['image'];
    String? video = arguments?['video'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('اضف الرد المناسب'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<AddReplyController>(
          builder: (controller) {
            // قم بالتحقق من وجود "image" و "video" قبل استخدامهما
            image ??= '';
            video ??= '';

            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  CustomTextAuth(
                    hinttext: "عنوان الرد",
                    iconData: Icons.location_city,
                    mycontroller: controller.title,
                    valid: (val) {},
                    isNumber: false,
                  ),
                  CustomTextAuth(
                    hinttext: "وصف الحل",
                    iconData: Icons.streetview,
                    mycontroller: controller.description,
                    valid: (val) {},
                    isNumber: false,
                  ),
                  CustomButtonAuth(
                    text: "ارسال",
                    onPressed: () {
                      controller.addReply();
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

*/