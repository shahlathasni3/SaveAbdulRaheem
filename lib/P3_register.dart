import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saveabdulrahim/payment.dart';

import 'P2_home.dart';
import 'gpay.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});


  List<dynamic> assembly = ['Assembly1','Assembly2','Assembly3', 'Assembly4', 'Assembly6','Assembly8'];

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      // backgroundColor: Colors.brown[50],
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
           'Participate Now',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
               '₹ 7,000',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC46F4E),
              ),
            ),
          ),

          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: TextField(
              // keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Name',
                // contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFd1c9c9),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value;
                  });
                }),
                Text(
                  "Participate as anonymous",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF6b6f75),
                  ),

                )
              ],
            ),
          ),

          // SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFd1c9c9),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),

          // SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Select District',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFd1c9c9),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),


          SizedBox(height: 15,),





        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 65,
          width: 350,
          child: FloatingActionButton.extended(
            label: Text(
              'Pay Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),

            ),
            backgroundColor: Color(0xFFC46F4E),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentPage()));

            },
          ),
        ),
      ),
    );
  }
}
