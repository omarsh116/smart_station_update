import 'package:flutter/material.dart';

import '../custom1_text.dart';

class TopProductDetails extends StatefulWidget {
  @override
  _TopProductDetailsState createState() => _TopProductDetailsState();
}

class _TopProductDetailsState extends State<TopProductDetails> {
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
            const SizedBox(
              height: 20,
            ),
            buildBlackContainer("Communication Details", () {
              toggleOptionsVisibility();
            }),
            Visibility(
              visible: isOptionsVisible,
              child: OptionContainer(),
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
        padding: const EdgeInsets.only(left: 15),
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            RotationTransition(
              turns: AlwaysStoppedAnimation(isOptionsVisible ? 0.6 : 0.5),
              child: const Icon(
                Icons.arrow_left_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
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
      padding: const EdgeInsets.only(right: 8, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black, // Example background color
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  width:280, // Set the desired width for the TextField
                  child: CustomText1(hinttext: "Project Name", iconData: Icons.gpp_good_outlined,maxLength:25,)
              ),
              SizedBox(width: 30),
              // Add some space between text and input field
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  width:280, // Set the desired width for the TextField
                  child: CustomText1(hinttext: "Personal Name", iconData: Icons.perm_identity_outlined,maxLength:25)
              ),
              SizedBox(width: 30),
              // Add some space between text and input field
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  width:280, // Set the desired width for the TextField
                  child: CustomText1(hinttext: "Governorate", iconData: Icons.place_outlined,maxLength:25)
              ),
              SizedBox(width: 30),
              // Add some space between text and input field
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  width:280, // Set the desired width for the TextField
                  child: CustomText1(hinttext: "Phone Number", iconData: Icons.phone_in_talk_outlined,maxLength:25)
              ),
              SizedBox(width: 30),
              // Add some space between text and input field
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  width:280, // Set the desired width for the TextField
                  child: CustomText1(hinttext: "About the Project", iconData: Icons.text_snippet_outlined,maxLength:150,maxLines: 5,)
              ),
              SizedBox(width: 30),
              // Add some space between text and input field
            ],
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//       title: const Text('Option Container Example'),
//   ),
//   body: Center(
