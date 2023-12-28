import 'package:ecommercecourse1/view/widget/custom1_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/product_controller.dart';
import '../../../linkapi.dart';

class TopProductDetails1 extends StatefulWidget {
  @override
  _TopProductDetailsState createState() => _TopProductDetailsState();
}

class _TopProductDetailsState extends State<TopProductDetails1> {
  bool isOptionsVisible = false;

  void toggleOptionsVisibility() {
    setState(() {
      isOptionsVisible = !isOptionsVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            buildBlackContainer("الباقات", () {
              toggleOptionsVisibility();
            }),
            // const SizedBox(
            //   height: 20,),
            // buildBlackContainer("بيانات التواصل", () {
            //   toggleOptionsVisibility();
            // }),
            Visibility(
              visible: isOptionsVisible,
              child: OptionContainer(), // Assuming OptionContainer is your options widget
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBlackContainer(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RotationTransition(
              turns: AlwaysStoppedAnimation(isOptionsVisible ? 0.4 : 0.5),
              child: const Icon(
                Icons.arrow_right_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OptionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      // Customize your option container as needed
      padding: const EdgeInsets.only(right: 15,left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black, // Example background color
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 300,child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: 100,
              itemBuilder: (context ,i ){
                return Container(
                  child: Text(". option",style: TextStyle(color: Colors.white),),
                );
              }))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Option Container Example'),
      ),
      body: Center(
        child: OptionContainer(),
      ),
    ),
  ));
}
