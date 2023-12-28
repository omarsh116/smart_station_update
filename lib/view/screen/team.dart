import 'package:ecommercecourse1/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Employee extends StatelessWidget {
  const Employee({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Smart Team", style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: AppColor.profile
      ),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: 120,
                  width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2),],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 10,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            height: 1.3
                          ),),
                          const Text( "07718668833",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                                height: 1.2
                            ),),
                        const Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.3
                          ),),

                        Container(
                          height: 26,
                          width: 200,
                          child: const Text("abdulwahhab.a.j@smartstation-iq.com",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white70,
                                height: 1.3
                            ),),
                        ),
                      ],)
                    ],
                  ),
                ),
            ),
            const SizedBox(height: 15,),Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: 120,
                  width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            height: 1.3
                          ),),
                          Text( "07718668833",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                                height: 1.5
                            ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                    ],
                  ),
                ),
            ),
            const SizedBox(height: 15,),Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: 120,
                  width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            height: 1.3
                          ),),
                          Text( "07718668833",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                                height: 1.5
                            ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                    ],
                  ),
                ),
            ),
            const SizedBox(height: 15,),Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: 120,
                  width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            height: 1.3
                          ),),
                          Text( "07718668833",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                                height: 1.5
                            ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                    ],
                  ),
                ),
            ),
            const SizedBox(height: 15,),
            Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                height: 120,
                width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.3
                          ),),
                        Text( "07718668833",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                  ],
                ),
              ),
            ),const SizedBox(height: 15,),
            Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                height: 120,
                width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.3
                          ),),
                        Text( "07718668833",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                  ],
                ),
              ),
            ),const SizedBox(height: 15,),
            Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                height: 120,
                width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.3
                          ),),
                        Text( "07718668833",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                  ],
                ),
              ),
            ),const SizedBox(height: 15,),
            Center(
              heightFactor: 1,
              child: Container(
                padding:  const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                height: 120,
                width: 370,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF2CAEC9), Color(0x872973C2)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/jumana.jpg",fit: BoxFit.fill,)),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mss.Jumana",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 1.3
                          ),),
                        Text( "07718668833",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                        Text( "Excutive manager",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Cairo',
                              color: Colors.white70,
                              height:1.5
                          ),),

                        Text("abdulwahhab.a.j@smartstation-iq.com",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              height: 1.5
                          ),),
                      ],)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

// child: Text("Health Coach",
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white
//                     ),),
//child: Text("Steve Rhodes",
//                       style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white
//                       ),)