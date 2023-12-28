/*import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/home_controller.dart';
import '../../../data/model/adsmodel.dart';
import '../../../linkapi.dart';

class CustomAds extends GetView<HomeControllerImp> {
  const CustomAds ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 500,
      child: PageView.builder(
        itemCount: controller.ads.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i){
          return AdsHome(adsModel:AdsModel.fromJson(controller.ads[i]));
        },
      ),
    );
  }
}

class AdsHome extends StatelessWidget {
  final AdsModel adsModel;
  const AdsHome({super.key, required this.adsModel});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "${AppLink.imageAds}/${adsModel.adsImage}",
      fit: BoxFit.fill,
    );
  }
}

*/