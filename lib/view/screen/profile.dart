import 'package:ecommercecourse1/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/profile_controller.dart';
import '../../core/constant/color.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return ListView(
      children: [
        Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(height: Get.width / 3, color: AppColor.profile),
              Positioned(
                  top: Get.width / 4.5,
                  child: Container(
                    height: 90,
                    width: 90,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child:
                       Image.asset("assets/images/logo.jpg"),
                  )),
            ]),
        const SizedBox(height: 100),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // ListTile(
              //   // onTap: () {},
              //   trailing:  Switch(onChanged: (val){} ,value: true ),
              //   title: const Text("Disable Notificatios"),
              // ),
              // ListTile(
              //   onTap: () {
              //     Get.toNamed(AppRoute.addressview);
              //   },
              //   trailing: const Icon(Icons.location_on_outlined),
              //   title: const Text("Address"),
              // ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.orderspending);
                },
                trailing: const Icon(Icons.account_tree_outlined),
                title: const Text("orders"),
              ),ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.report);
                },
                trailing: const Icon(Icons.report),
                title: const Text("report"),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.aboutus);
                },
                trailing: const Icon(Icons.help_outline_rounded),
                title: const Text("About us"),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.contactus);
                },
                trailing: const Icon(Icons.phone_callback_outlined),
                title: const Text("Contact us"),
              ),
              ListTile(
                onTap: () {
                  controller.logout();
                },
                title: const Text("Logout"),
                trailing: const Icon(Icons.exit_to_app),
              ),
            ]),
          ),
        )
      ],
    );
  }
}