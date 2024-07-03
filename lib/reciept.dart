import 'package:flutter/material.dart';

import 'P2_home.dart';

class reciept extends StatelessWidget {
  reciept({super.key});

  List<dynamic> catNames = [
    "456456785412642",
    "******23456",
    "Asif KP",
    "Unit",
    "Through GooglePay",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions:[ IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 15,
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        )
        ],
        title: Text(
          'Reciept',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 405,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFC46F4E),
                  child: Icon(Icons.keyboard_double_arrow_right_outlined,color: Colors.white,),
                ),
                  SizedBox(width: 8,),
                  Text('456456785412642'),
                ],
              ),

              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFC46F4E),
                    child: Icon(Icons.phone_android_rounded,color: Colors.white,),
                  ),
                  SizedBox(width: 8,),
                  Text('******23456'),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFC46F4E),
                    child: Icon(Icons.account_circle,color: Colors.white,),
                  ),
                  SizedBox(width: 8,),
                  Text('Asif KP'),
                ],
              ),

              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFC46F4E),
                    child: Icon(Icons.location_on,color: Colors.white,),
                  ),
                  SizedBox(width: 8,),
                  Text('Unit'),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 43),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFC46F4E),
                  child: Icon(Icons.build_circle_sharp,color: Colors.white,),
                ),
                SizedBox(width: 8,),
                Text('Through GooglePay'),
              ],
            ),
          ),
          SizedBox(height: 105,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(child: SizedBox(
              height: 55,
              width: 165,
              child: FloatingActionButton.extended(
                label: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFC46F4E),
                      child: Icon(Icons.add_circle,color: Colors.white,),
                    ),
                    SizedBox(width: 7,),
                    Text('Add Volunteer',style: TextStyle(color: Colors.white,fontSize: 15),),
                  ],
                ),
                backgroundColor: Color(0xFFC46F4E),
                onPressed: () {},
              ),
            ),),
              Container(child: SizedBox(
                height: 55,
                width: 165,
                child: FloatingActionButton.extended(
                  label: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xFFC46F4E),
                        child: Icon(Icons.share,color: Colors.white,),
                      ),
                      SizedBox(width: 7,),
                      Text('Share',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),
                  backgroundColor: Color(0xFFC46F4E),
                  onPressed: () {},
                ),
              ),),
          ],),


        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 65,
          width: 350,
          child: FloatingActionButton.extended(
            label: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFC46F4E),
                  child: Icon(Icons.share,color: Colors.white,),
                ),
                SizedBox(width: 7,),
                Text('Make WhatsApp Status',style: TextStyle(color: Colors.white,fontSize: 15),),
              ],
            ),
            backgroundColor: Color(0xFFC46F4E),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ),
      ),
    );
  }
}
