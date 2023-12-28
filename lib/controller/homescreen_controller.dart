import 'package:ecommercecourse1/view/screen/favorite.dart';
import 'package:ecommercecourse1/view/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/screen/cart.dart';
import '../view/screen/home.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    const Cart(),
    const Favorite(),
    const Profile()
  ];

  List  titlebottomappbar = [
    "home" ,
    "settings" ,
    "profile" ,
    "favorite"
  ] ;

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}