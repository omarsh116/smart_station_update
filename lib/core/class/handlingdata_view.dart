import 'package:ecommercecourse1/core/class/status_request.dart';
import 'package:ecommercecourse1/core/constant/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      statusRequest == StatusRequest.loading
          ? Center(child: Lottie.asset(AppImageAssets.loading,width:70,height:70, /*repeat:false */))
          : statusRequest == StatusRequest.offlinefailure
          ? Center(child: Lottie.asset(AppImageAssets.offline,/*width:,height*/))
          : statusRequest == StatusRequest.serverfailure
          ? Center(child:  Lottie.asset(AppImageAssets.server,/*width:,height*/))
          : statusRequest == StatusRequest.failure
          ? Center(child: Lottie.asset(AppImageAssets.noData,/*width:,height*/))
          :widget;

  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest  (
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      statusRequest == StatusRequest.loading
          ? Center(child: Lottie.asset(AppImageAssets.loading,width:70,height:70, /*repeat:false */))
          : statusRequest == StatusRequest.offlinefailure
          ? Center(child: Lottie.asset(AppImageAssets.offline,/*width:,height*/))
          : statusRequest == StatusRequest.serverfailure
          ? Center(child:  Lottie.asset(AppImageAssets.server,/*width:,height*/))
          : widget;

  }
}