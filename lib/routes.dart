import 'package:ecommercecourse1/view/screen/About%20us.dart';
import 'package:ecommercecourse1/view/screen/address/add.dart';
import 'package:ecommercecourse1/view/screen/address/add_addressdetails.dart';
import 'package:ecommercecourse1/view/screen/address/view.dart';
import 'package:ecommercecourse1/view/screen/auth/verfiycode_signup.dart';
import 'package:ecommercecourse1/view/screen/cart.dart';
import 'package:ecommercecourse1/view/screen/checkout.dart';
import 'package:ecommercecourse1/view/screen/contactus.dart';
import 'package:ecommercecourse1/view/screen/home_screen.dart';
import 'package:ecommercecourse1/view/screen/items.dart';
import 'package:ecommercecourse1/view/screen/on_boarding.dart';
import 'package:ecommercecourse1/view/screen/orders/pending.dart';
import 'package:ecommercecourse1/view/screen/details.dart';
import 'package:ecommercecourse1/view/screen/reply.dart';
import 'package:ecommercecourse1/view/screen/report_view.dart';
import 'package:ecommercecourse1/view/screen/sender.dart';
import 'package:get/get.dart';
import 'core/constant/routes.dart';
import 'core/middleware/my_middleware.dart';
import 'view/screen/auth/forget_password/forget_password.dart';
import 'view/screen/auth/forget_password/reset_password.dart';
import 'view/screen/auth/forget_password/success_reset.dart';
import 'view/screen/auth/forget_password/verify_code.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/auth/sign_up.dart';
import 'view/screen/auth/success_signup.dart';

List<GetPage<dynamic>>? routes = [

  // GetPage(name: "/", page: () => const ReportView()),

  GetPage(name: "/", page: () => const OnBoarding(),middlewares: [
    MyMiddleWare()]),


  //Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //Home
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.product, page: () => const Details()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  //Address

  GetPage(name: AppRoute.checkout, page: () => const CheckOut()),

  //profilw

  GetPage(name: AppRoute.aboutus, page: () =>  const ABoutUs()),
  GetPage(name: AppRoute.contactus, page: () =>  const ContactUs()),


];
