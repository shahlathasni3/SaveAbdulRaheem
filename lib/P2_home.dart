import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saveabdulrahim/P3_register.dart';
import 'package:saveabdulrahim/reports.dart';
import 'package:saveabdulrahim/topDistrict.dart';
import 'package:saveabdulrahim/topVolunteers.dart';
import 'package:saveabdulrahim/transactions.dart';
import 'package:saveabdulrahim/volunteerPayments.dart';
import 'package:saveabdulrahim/volunteerReg.dart';

import 'gpay.dart';
import 'history.dart';
import 'leaderBoard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // creating static data in list
  List catNames = [
    "Transactions",
    "My History",
    "Volunteer registration",
    "Volunteer Payment",
    "Top Volunteers",
    "Top District",
    "Leader Board",
    "Reports",
  ];
  List<Color> catColors = [
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
    Color(0xFFC46F4E),
  ];
  List<String> catImg = [
    "assets/IconImage/i1.png",
    "assets/IconImage/i2.png",
    "assets/IconImage/i3.png",
    "assets/IconImage/i4.png",
    "assets/IconImage/i5.png",
    "assets/IconImage/i6.png",
    "assets/IconImage/i7.png",
    "assets/IconImage/i8.png",
  ];

  List<Widget> IconNav = [
    transactions(),
    history(),
    volunteerReg(),
    volunteerPayments(),
    topVolunteers(),
    topDistrict(),
    leaderBoard(),
    reports()
  ];
  List<String> image = [
    'assets/homeImage/M1.png',
    'assets/homeImage/M2.png',
    'assets/homeImage/M3.png'
  ];
  List<String> name = ["Asif Saheer KT", "Jouhar Muhammed", "Ameen Yasir"];
  List<String> subName = ["Kondotty", "Malappuram", "Vengara"];
  List<dynamic> money = ['₹200000', '₹20000', '₹15000'];

  List<dynamic> QuickPay = [
    '₹100',
    '₹500',
    '₹1,000',
    '₹2,000',
    '₹5,000',
    '₹10,000'
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Colors.brown[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first section start
            Container(
              height: height * .5,
              width: width * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55.0),
                  bottomRight: Radius.circular(55.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/homeImage/18925 1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      '"Join hands to wipe away this mother' + "'" + 's tears"',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(
                      '"ഈ ഉമ്മയുടെ കണ്ണീരൊപ്പാൻ കൈ കോർക്കുക"',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    // height:height/70
                  ),
                  Image.asset('assets/homeImage/Frame 1917.png'),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * .05,
                          width: width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'How to pay?',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: height * .05,
                          width: width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'App Support',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // first section end

            // second section start
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      ' ₹33,30,00,000',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 45,
                      ),
                    ),
                  ),
                  Text(
                    'Collected so far',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // second section end

            // third section start
            SizedBox(
              height: 25,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today' + "'" + 's Toppers',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFC46F4E),
                      ),
                    ),
                    Container(
                      // color: Colors.green,
                      // height: 250,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          // scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              child: ListTile(
                                leading: Image.asset(
                                  image[index],
                                ),
                                title: Text(
                                  name[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                subtitle: Text(subName[index]),
                                trailing: Text(
                                  money[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                              ),
                            );
                          }),
                    ),

                    // Container(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Image.asset(
                    //             'assets/homeImage/M1.png',
                    //           ),
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 'Ashif Shaheer KT',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 15,
                    //                 ),
                    //               ),
                    //               Text('Kondotty'),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Text(
                    //         '₹2,00,000',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // Container(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Image.asset(
                    //             'assets/homeImage/M2.png',
                    //           ),
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 'Jouhar Muhammed',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 15,
                    //                 ),
                    //               ),
                    //               Text('Malappuram'),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Text(
                    //         '₹20,000',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // Container(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Image.asset(
                    //             'assets/homeImage/M3.png',
                    //           ),
                    //           Column(
                    //             children: [
                    //               Text(
                    //                 'Ameen Yasir',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 15,
                    //                 ),
                    //               ),
                    //               Text('Vengara'),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Text(
                    //         '₹15,000',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // third section End

            // fourth section start
            Container(
              child: Column(
                children: [
                  Text(
                    'Quick Pay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: GridView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: QuickPay.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisExtent: 60,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 100),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => gpayPage()));
                              },
                              child: Chip(
                                label: Container(
                                  height: 30,
                                  width: 80,
                                  child: Center(
                                      child: Text(
                                    QuickPay[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  )),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                side: BorderSide(color: Color(0xFFC46F4E)),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            // fourth section end

            // sixth section start
            SizedBox(
              height: 25,
            ),
            Container(
              // height: 500,
              // color: Colors.yellow,
              child: GridView.builder(
                  padding: EdgeInsets.only(top: 5),
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 140
                      // childAspectRatio: 1

                      // childAspectRatio: 100,
                      ),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Container(
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                catImg[index],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.35),
                                  offset: const Offset(
                                    0.0,
                                    20.0,
                                  ),
                                  blurRadius: 3.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                            height: 45,
                            width: 45,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IconNav[index],
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            height: 50,
                            child: Text(
                              catNames[index],
                              textAlign: TextAlign.center,
                            )),
                      ],
                    );
                  }),
            ),
            // sixth section end

            //seventh section start
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 34,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.55),
                          offset: const Offset(
                            2.0,
                            4.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: .50,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified_user,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 34,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.55),
                          offset: const Offset(
                            2.0,
                            4.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: .50,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified_user,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text(
                          "Terms and Condition",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 34,
                    width: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.55),
                          offset: const Offset(
                            2.0,
                            4.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: .50,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified_user,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //seventh section end
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 65,
          width: 350,
          child: FloatingActionButton.extended(
            label: Text(
              'Contribute Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            backgroundColor: Color(0xFFC46F4E),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
          ),
        ),
      ),
    );
  }
}
