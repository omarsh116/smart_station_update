import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postData(String email ,String verfiycode) async {
    var response = await crud.postData(AppLink.verfiycodeforgetpassword, {
      "email" : email ,
      "verfiycode" : verfiycode
    });
    return response.fold((l) => l, (r) => r);
  }
}