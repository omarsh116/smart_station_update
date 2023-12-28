// import 'package:ecommercecourse1/controller/cart_controller.dart';
// import 'package:ecommercecourse1/view/widget/cart/order_button.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../core/constant/color.dart';
// import 'button_coupon.dart';
//
// class PriceDetails extends GetView<CartController> {
//   final String price ;
//   final String discount ;
//   final String shipping ;
//   final String totalprice ;
//   final TextEditingController controllercoupon ;
//   final void Function()? onApplyCoupon ;
//   const PriceDetails({Key? key, required this.price, required this.discount, required this.totalprice, required this.controllercoupon, this.onApplyCoupon, required this.shipping}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         GetBuilder<CartController>(builder: (controller)=>
//             controller.couponname == null ?
//             Container(margin:const EdgeInsets.symmetric(horizontal: 15),child: Row(children: [
//               Expanded(flex:1,child: CustomButtonCoupon(textbutton: 'APPLY',onPressed: onApplyCoupon,)),
//               const SizedBox(width: 10,),
//               Expanded(flex:2,child: TextFormField(
//             controller: controllercoupon,
//             decoration: const InputDecoration(
//                 isDense: true,
//                 contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
//                 hintText: "                       قسيمة خصم",
//                 border: OutlineInputBorder()
//             ),
//           )),],),):Text("${controller.couponname!}     رمز القسيمة ",style: const TextStyle(color: AppColor.primaryColor),)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: const Text("price", style: TextStyle(fontSize: 16))),
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("$price \$", style: const TextStyle(fontSize: 16)))
//           ],
//         ),
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: const Text("shipping", style: TextStyle(fontSize: 16))),
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("$shipping \$", style: const TextStyle(fontSize: 16)))
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: const Text("discount", style: TextStyle(fontSize: 16))),
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("$discount %", style: const TextStyle(fontSize: 16)))
//           ],
//         ),
//         const Divider(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: const Text("Total Price",
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: AppColor.primaryColor))),
//             Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("$totalprice \$",
//                     style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: AppColor.primaryColor)))
//           ],
//         ),
//         const SizedBox(height: 10),
//         OrderButton(
//           textbutton: "حجز الطلب",
//           onPressed: () {
//             controller.goToPageCheckout();
//           },
//         )
//       ],
//     );
//   }
// }