import 'package:flutter/material.dart';
import '../../core/constant/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 80,
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.notifications, // Notification icon
              color: AppColor.profile,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    padding: const EdgeInsets.all(10),
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.chart,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Cash Value",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        const Text("Accumulate savings while securing your family life.",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 120,
                    width: 300,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.chart,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Cash Value",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                        const Text("Accumulate savings while securing your family life.",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 120,
                    width: 300,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.chart,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Cash Value",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                        const Text("Accumulate savings while securing your family life.",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 300,
                    width: 360,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                           // margin: EdgeInsets.all(10.0), // Margin for blue-grey container
                            height: 230,
                            width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          "Insure Family Safety Quality Products",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Insure Family Safety refers to protecting the well-being and security of your loved ones through various means, such as buying insurance policies.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: AppColor.text,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.insert_chart_outlined_rounded,size: 60,color: AppColor.icon),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Award Winning",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Acknowledge for Excellence",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.insert_chart_outlined_rounded,size: 60,color: AppColor.icon),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Award Winning",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Acknowledge for Excellence",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: 370,
                    padding: const EdgeInsets.all(5),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text("Secured Solutions", style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        const Center(
                          child: Text("Life Insurance Services", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        const SizedBox(height: 10,),
                        Center(
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor.icon,
                            ),
                            child: const Center(
                              child:  Text("View All Services",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                        height: 220,
                        width: 360,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 20,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Term life",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      const Text("Coverage for a specific period with affordable premiums.",
                       )
                    ],)
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 370,
                    padding: const EdgeInsets.all(5),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                        height: 220,
                        width: 360,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 20,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Term life",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      const Text("Coverage for a specific period with affordable premiums.",
                       )
                    ],)
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 370,
                    padding: const EdgeInsets.all(5),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                        height: 220,
                        width: 360,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 20,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Term life",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      const Text("Coverage for a specific period with affordable premiums.",
                       )
                    ],)
                  ),
                  const SizedBox(height: 15,),
                  Stack(
                    children: [
                      Container(
                        height: 280,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.chart,
                        ),
                        child: Image.asset(
                          "assets/images/chart.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 30, // Adjust the top value to position the text vertically
                        left: 20, // Adjust the left value to position the text horizontally
                        child: Column(
                          children: [
                            Icon(Icons.input,color: Colors.white,size: 25,),
                            SizedBox(height: 5),
                            Text(
                              "150K",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),Text(
                              "Happy Customer",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 30, // Adjust the top value to position the text vertically
                        right: 20, // Adjust the left value to position the text horizontally
                        child: Column(
                          children: [
                            Icon(Icons.ac_unit_rounded,color: Colors.white,size: 25),
                            SizedBox(height: 5),
                            Text(
                              "259+",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),Text(
                              "Professional Agent",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        bottom: 30, // Adjust the top value to position the text vertically
                        left: 20, // Adjust the left value to position the text horizontally
                        child: Column(
                          children: [
                            Icon(Icons.backup_outlined,color: Colors.white,size: 25),
                            SizedBox(height: 5),
                            Text(
                              "180+",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),Text(
                              "National Award",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        bottom: 30, // Adjust the top value to position the text vertically
                        right: 20, // Adjust the left value to position the text horizontally
                        child: Column(
                          children: [
                            Icon(Icons.account_tree_outlined,color: Colors.white,size: 25),
                            SizedBox(height: 5),
                            Text(
                              "193+",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),Text(
                              "Country Connected",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 250,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          child: Container(
                            height: 250,
                            width: 290,
                            color: Colors.grey,
                        ),
                        ),
                        Positioned(
                          top: 50,
                          left: 0,
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.chart,
                            ),
                            child: Transform.rotate(
                              angle: -1.57,
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "From",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "2013",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 370,
                    color: Colors.white,
                    child: const Column(children: [
                      Text(
                        "Protecting Your Family with Life Insurance",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Life insurance is a type of insurance policy that provides financial coverage to the beneficiaries of the policyholder in the event of their death. The main purpose of life insurance is to provide",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(children: [
                        Row(children: [
                          Icon(Icons.check_circle,color: AppColor.icon,),
                          Text("Pina & Associates Insurance",),
                          Icon(Icons.check_circle,color: AppColor.icon,),
                          Text("Payment at Contingency"),
                        ],),
                        Row(children: [
                          Icon(Icons.check_circle,color: AppColor.icon,),
                          Text("Pina & Associates Insurance"),
                          Icon(Icons.check_circle,color: AppColor.icon,),
                          Text("Payment at Contingency"),

                        ],),
                      ],),
                      SizedBox(height: 20),
                    ],),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 370,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            child: Row(
                              children: [
                                const SizedBox(width: 70,),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(180),
                                    color: Colors.white60,
                                  ),
                                  child: const Icon(Icons.contact_support_outlined, size: 40, color: AppColor.icon,),
                                ),
                                const SizedBox(width: 25),
                                const Text(
                                  "(+1405)555-0128",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        const SizedBox(height: 20,),
                        const Text(
                          "Featured Projects",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.chart
                          ),
                        ),
                        const Text(
                          "Our Latest Case Study",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Stack(
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey,
                              ),
                            ),
                            Positioned(
                              top: 180,
                              left: 160,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 240,
                              left: 115,
                              child: Column(
                                children: [
                                  // Text("Family Coverage",style: TextStyle(
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.bold,
                                  //     color:  Colors.white
                                  // ),),
                                  Text("Family Insurance",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Stack(
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey,
                              ),
                            ),
                            Positioned(
                              top: 180,
                              left: 160,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 240,
                              left: 115,
                              child: Column(
                                children: [
                                  // Text("Family Coverage",style: TextStyle(
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.bold,
                                  //     color:  Colors.white
                                  // ),),
                                  Text("Family Insurance",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Stack(
                          children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey,
                              ),
                            ),
                            Positioned(
                              top: 180,
                              left: 160,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 240,
                              left: 115,
                              child: Column(
                                children: [
                                  // Text("Family Coverage",style: TextStyle(
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.bold,
                                  //     color:  Colors.white
                                  // ),),
                                  Text("Family Insurance",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    width: 370,
                    color: Colors.white,
                    child:  Column(children: [
                      const Text(
                        "Speak with Our Pros",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColor.icon
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Connect with Our Advisors",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 450,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                        child: const Stack(
                          children: [
                            Positioned(
                              bottom: 60,
                              left: 20,
                              child: Text("Case Manager",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                            ),
                            Positioned(
                                bottom: 25,
                                left: 20,
                                child: Text("Balm Barak",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 450,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                        child: const Stack(
                          children: [
                            Positioned(
                              bottom: 60,
                              left: 20,
                              child: Text("Health Coach",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                            ),
                            Positioned(
                                bottom: 25,
                                left: 20,
                                child: Text("Steve Rhodes",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 450,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                        child: const Stack(
                          children: [
                            Positioned(
                              bottom: 60,
                              left: 20,
                              child: Text("Claims Analyst",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                            ),
                            Positioned(
                                bottom: 25,
                                left: 20,
                                child: Text("Alan Dosan",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)),
                          ],
                        ),
                      ),
                    ],),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                    width: 370,
                    child:  Column(
                      children: [
                        const Text("Customer Testimonials Our Insurance Coverage",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                        color: Colors.black
                    )),
                        const SizedBox(height: 15,),
                        const Text("At Our Insurance Coverage, we take pride in providing exceptional insurance coverage and customer service to our clients. But don't just take our word for it - hear it from our satisfied customers!",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                        color: Colors.black
                    )),
                        const SizedBox(height: 15,),
                        Container(
                          width: 370,
                          color: AppColor.white1,
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width:10,
                                color: AppColor.icon,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Column(
                                  children: [
                                    Text("99.9% Customer Satisfaction based on 950+ Reviews and \n"
                                        " 56,530 Objective Resource",
                                        style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.comment
                        ),
                        child:   Stack(
                          children: [
                           Container(
                             padding: const EdgeInsets.only(left: 10,top: 7),
                             child: const Row(
                                children: [
                                  Text("Tyrese Maxy",style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                  SizedBox(width: 80,),
                                  Icon(Icons.star,color: AppColor.star,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color: Colors.amberAccent,),
                                  Icon(Icons.star,color: Colors.amberAccent,),

                                ],
                              ),
                           ),
                            const Positioned(
                              bottom: 65,
                              left: 10,
                              child: Text("At Our Insurance Coverage, \nwe take pride in providing exceptional \n service to our clients. ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, top: 12),
                                height: 50,
                                width: 350,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),  // Adjust the radius value as needed
                                    bottomRight: Radius.circular(10), // Adjust the radius value as needed
                                  ),
                                  color: AppColor.icon,
                                ),
                                child: const Text(
                                  "CEO & CO-Founder",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              right: 10,
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: AppColor.comment
                                      ),
                                    ),
                                    Positioned(
                                      top: 5, // Adjust this value to position the red circle vertically
                                      left: 5, // Adjust this value to position the red circle horizontally
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.blueGrey
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 52, // Adjust this value to position the red circle vertically
                              right: 60, // Adjust this value to position the red circle horizontally
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                ),
                                child:  const Center(
                                  child: Text("''",style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.icon
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  const SizedBox(height: 20,),
                  Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.comment
                        ),
                        child:   Stack(
                          children: [
                           Container(
                             padding: const EdgeInsets.only(left: 10,top: 7),
                             child: const Row(
                                children: [
                                  Text("Philip Keynoter",style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                  SizedBox(width: 50,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color:  AppColor.star,),
                                  Icon(Icons.star,color: Colors.amberAccent,),
                                ],
                              ),
                           ),
                            const Positioned(
                              bottom: 65,
                              left: 10,
                              child: Text("nsure Family Safety refers to protecting\n the well-being and security of your\n loved ones through various.",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, top: 12),
                                height: 50,
                                width: 350,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),  // Adjust the radius value as needed
                                    bottomRight: Radius.circular(10), // Adjust the radius value as needed
                                  ),
                                  color: AppColor.icon,
                                ),
                                child: const Text(
                                  "CEO & CO-Founder",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              right: 10,
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: AppColor.comment
                                      ),
                                    ),
                                    Positioned(
                                      top: 5, // Adjust this value to position the red circle vertically
                                      left: 5, // Adjust this value to position the red circle horizontally
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.blueGrey
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 52, // Adjust this value to position the red circle vertically
                              right: 60, // Adjust this value to position the red circle horizontally
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                ),
                                child:  const Center(
                                  child: Text("''",style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.icon
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  const SizedBox(height: 25,),
                  Container(
                      width: 370,
                      padding: const EdgeInsets.all(5),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 220,
                            width: 360,
                            color: Colors.white,
                            child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child: Container(
                                      height: 65,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: const Column(children: [
                                        Text("27", style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),),
                                        Text("May", style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black
                                        ),),
                                      ],),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          //const SizedBox(height: 10,),
                          const Text(
                            "Life Insurance",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColor.icon
                            ),
                          ),
                          const Text("When to Consider Life Insurance Options",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],)
                  ),
                  const SizedBox(height: 50,),
                  Stack(
                    children: [
                      Column(children: [
                        Container(
                          height: 250,
                          color: Colors.white,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 150),
                          height: 500,
                          color: Colors.black,
                          child:  Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 20,left: 10),
                                width: 220,
                                child:  Column(children: [
                                   const Text(
                                      "The About Us page of a company typically provides information about the company's background, history, values,",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey
                                      ),
                                    ),
                                  const SizedBox(height: 10,),
                                  const Text("Follow Us",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],),
                              ),
                              const SizedBox(width: 25,),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                  "Main Pages",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  "About Us",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                  ),
                                ),
                                  SizedBox(height: 12,),
                                Text(
                                  "Services",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                  ),
                                ),
                                  SizedBox(height: 12,),
                                Text(
                                  "Portfolio",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                  ),
                                ),
                                  SizedBox(height: 12,),
                                Text(
                                  "Testimonial",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                  ),
                                ),
                                  SizedBox(height: 12,),
                                Text(
                                  "Blog & News",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey
                                  ),
                                ),
                              ],)
                            ],
                          ),
                        ),
                        Container(
                          padding:  const EdgeInsets.only(left: 15,bottom: 5),
                          width: 400,
                          color: Colors.black,
                          child: const Text("Copyright 2023 Smart Station - All Rights Reserved",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),),
                        )
                      ],),
                      Positioned(
                        top: 80,
                        left: 22,
                        child: Container(
                            height: 230,
                            width: 340 ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.icon,
                            ),
                            child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 150,
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),  // Adjust the radius value as needed
                                            bottomRight: Radius.circular(10),
                                          ),
                                          color: Colors.white
                                      ),
                                      child: Image.asset("assets/images/Logo.png"),
                                    ),
                                    const SizedBox(height: 25,),
                                    Container(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: const Row(children: [
                                        Icon(Icons.message_outlined,size: 35,color: Colors.white,),
                                        SizedBox(width: 20,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Need Help",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "info@smartstation-iq.com",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )

                                      ],),
                                    ),
                                    const SizedBox(height: 20,),
                                    Container(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: const Row(children: [
                                        Icon(Icons.call_outlined,size: 35,color: Colors.white,),
                                        SizedBox(width: 20,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Make a Call",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "(+2) 0109-1812-347",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],),
                                    ),
                                  ],
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}