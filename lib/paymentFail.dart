import 'package:flutter/material.dart';
import 'package:saveabdulrahim/payment.dart';

import 'P2_home.dart';

class paymentFail extends StatelessWidget {
  const paymentFail({super.key});

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
          Center(child: Image.asset('assets/paymentImage/pf.png')),
          Text(
            'Payment was Failed',
            style: TextStyle(
              fontFamily: 'Libre Baskerville',
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Colors.red[700],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 10),
            child: Container(
              width: width * .8,
              child: Text(
                'Something went wrong. We couldn' + "'" + 't process'
                    '\n   your payment. Contact our support if you'
                    '\n                       have loss money.',
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.extended(

              label: Text(
                'Retry',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              backgroundColor: Color(0xFFC46F4E),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),

            FloatingActionButton.extended(
              label: Text(
                'Support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              backgroundColor: Color(0xFFC46F4E),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
