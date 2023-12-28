import 'package:flutter/material.dart';
import 'dart:ui';

class GlassBox extends StatelessWidget {
  const GlassBox(
      {Key? key,
        required this.theWidth,
        required this.theHeight,
        required this.theChild})
      : super(key: key);

  final double theWidth;
  final double theHeight;
  final String theChild;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          width: theWidth,
          height: theHeight,
          color: Colors.transparent,
          child: Stack(
            children: [
              //التغويش
              BackdropFilter(
                filter: ImageFilter.blur(
                  // Horizontal
                  sigmaX: 3.0,
                  //Vertical
                  sigmaY: 3.0,
                ),
                //we use this container to scale up the blur effect to fit its
                //  parent, without this container the blur effect doesn't appear.
                child: Container(),
              ),
              //gradient
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white.withOpacity(0.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        //begin
                        Colors.white.withOpacity(0.5),
                        //end
                        Colors.white.withOpacity(0.5),
                      ]),
                ),
              ),
              //child ==> النص
              Center(child: Text(theChild)),
            ],
          ),
        ),
      ),
    );
  }
}