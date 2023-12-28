import 'package:ecommercecourse1/core/class/crud.dart';
import 'package:ecommercecourse1/linkapi.dart';

class VerfiyCodeSignUpData {
  Crud crud;
  VerfiyCodeSignUpData(this.crud);
  postData(String email ,String verfiycode ) async {

    var response = await crud.postData(AppLink.verfiycodesignup, {
      "email" : email ,
      "verfiycode" : verfiycode
    });
    return response.fold((l) => l, (r) => r);
  }

  resendData(String email) async{
    var response = await crud.postData(AppLink.resend, { "email" : email });
    return response.fold((l) => l, (r) => r);
  }

}