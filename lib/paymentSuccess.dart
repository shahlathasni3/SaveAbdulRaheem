import 'package:flutter/material.dart';
import 'package:saveabdulrahim/payment.dart';
import 'package:saveabdulrahim/reciept.dart';

import 'P2_home.dart';

class paymentSuc extends StatelessWidget {
  const paymentSuc({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
          'Payment Status',
          style: TextStyle(fontSize: 15),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(child: Image.asset('assets/paymentImage/ps.png')),
          Text(
            'Payment was Successful',
            style: TextStyle(
              fontFamily: 'Libre Baskerville',
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Colors.green[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 10),
            child: Container(
              width: width * .5,
              child: Text(
                'We have recieved your payment,'
                    '\n                   Thank you',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        ],),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton.extended(

          label: Row(
            children: [
              Text(
                'Reciept',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xFFC46F4E),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => reciept()));
          },
        ),
      ),
    );
  }
}
