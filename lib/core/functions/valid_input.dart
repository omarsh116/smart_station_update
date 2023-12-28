import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "اسم غير صالح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "ايميل غير صالح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "هاتف غير صالح";
    }
  }

  if (val.isEmpty) {
    return "حقل فارغ";
  }

  if (val.length < min) {
    return "لا يمكن ان يكون اقل من  $min";
  }

  if (val.length > max) {
    return "لا يمكن ان يكون اكبر من $max";
  }
}