import 'package:ecommercecourse1/core/constant/routes.dart';
import 'package:ecommercecourse1/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

abstract class OnBoardingController extends GetxController{

  next(); //مهمتها عند الضغط تنقلني للصفحه الاخرى
  onPageChanged(int index); //تفاعلات الدوت

}

class OnBoardingControllerImp extends OnBoardingController {

  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find() ;

  @override
  next() {
    currentPage++ ;
    if (currentPage > onBoardingList.length -1 ){
      myServices.sharedPreferences.setString("step", "1") ;
      Get.offAllNamed(AppRoute.login) ;
    }else{
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve:Curves.easeInOut);
    }

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();

  }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}