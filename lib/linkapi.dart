class AppLink {

  static const String server = "https://101projectapp.com/101projectapp";
  static const String image = "https://101projectapp.com/101projectapp/upload";
  static const String test = "$server/test.php";

  // image

  static const String imageCategories = "$image/categories";
  static const String imageItems = "$image/items";
  static const String imageAds = "$image/ads";

  // AUTH

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verfiycodesignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";

  // forget_password

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verfiycodeforgetpassword = "$server/forgetpassword/verfiycode.php";

  // home

  static const String homepage = "$server/home.php";

  // items

  static const String items = "$server/items/items.php";
  static const String search = "$server/items/search.php";

  // favorite

  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deleteFromFavorite = "$server/favorite/deletefromfavorite.php";

  // cart

  static const String cartview = "$server/cart/view.php";
  static const String cartadd = "$server/cart/add.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String cartgetcountitems = "$server/cart/getcountitems.php";


  // address

  static const String addressView = "$server/address/view.php";
  static const String addressAdd = "$server/address/add.php";
  static const String addressEdit = "$server/address/edit.php";
  static const String addressDelete = "$server/address/delete.php";

  // coupon

  static const String checkcoupon = "$server/coupon/checkcoupon.php";

  // orders
  static const String checkout = "$server/orders/checkout.php";
  static const String pendingorders = "$server/orders/pending.php";
  static const String archiveorders = "$server/orders/archive.php";

  // report
  static const String report = "$server/report/view.php";
  static const String reply = "$server/reply/add.php";

}