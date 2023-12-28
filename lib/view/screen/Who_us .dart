import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constant/color.dart';

class ABoutUs extends StatelessWidget {

  const ABoutUs({super.key});


  @override
  Widget build(BuildContext context) {

    return  Scaffold (
      backgroundColor: AppColor.contact_us,
      appBar: AppBar(
        title: const Text("Who Us", style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
            color: AppColor.profile
        ),),
      ),

     body:  Container (
       padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 1,width: double.infinity,color: Colors.black54,),
             RichText(
               text: const TextSpan(
                 children: [
                   TextSpan(
                     text: 'Smart Station  ',
                     style: TextStyle(
                       fontSize: 30,
                       color: AppColor.text1,
                       fontWeight: FontWeight.bold
                     ),
                   ), TextSpan(
                     text: '\n\nis an IT solutions provider established in ',
                     style: TextStyle(
                       fontSize: 16,
                       color: Colors.white,
                     ),
                   ),
                   TextSpan(
                     text: '2013',
                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.normal,  // Apply your specific text style here
                       color: Colors.white // Change the color as needed
                     ),
                   ),
                   TextSpan(
                     text: ' serving clients in Iraq and the Middle East and Africa region.\n\nThe smart station aims to accompany its valuable customers and trusted partners through their digital transformation journeys\nto provide them with solutions to ensure high-quality service that ensures business growth.',
                     style: TextStyle(
                       fontSize: 16,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),

             ),
             Container(
               margin: const EdgeInsets.symmetric(vertical: 20),
               height: 1,width: double.infinity,color: Colors.white,),
             Column(children: [
               const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Saturday-thirsday", style: TextStyle(
                       fontSize: 20,
                       fontFamily: 'Cairo',
                       color: Colors.white
                   ),),
                   Text(" 9:00 AM-4:00 PM", style: TextStyle(
                       fontSize: 20,
                       color: Colors.blueGrey
                   ),)
                 ],
               ), const Row(

                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Friday", style: TextStyle(
                       fontSize: 20,
                       fontFamily: 'Cairo',
                       color: Colors.white
                   ),),
                   Text("OFF", style: TextStyle(
                       fontSize: 20,
                       color: Colors.white
                   ),)
                 ],
               ),
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 20),
                 height: 1,width: double.infinity,color: Colors.white,),

             ],)
           ],
         ),
     ),

    );
  }
}


