import 'package:ecommercecourse1/core/class/crud.dart';
import 'package:ecommercecourse1/linkapi.dart';

class  LoginData {
  Crud crud;
  LoginData(this.crud);
  postData (String email ,String password) async {
    var response = await crud.postData(AppLink.login, {
      "email" : email ,
      "password" : password,
    });
    return response.fold((l) => l, (r) => r);
  }
}