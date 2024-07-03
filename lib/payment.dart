import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saveabdulrahim/paymentFail.dart';
import 'package:saveabdulrahim/P3_register.dart';

import 'gpay.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

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
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
          },
        )
        ],
        title: Text(
          'Participate Now',
          style: TextStyle(fontSize: 15),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Center(
              child: Text(
                '₹ 7,000',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFC46F4E),
                ),
              ),
            ),
          ),

          SizedBox(height: 75,),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Text(
                'Select Payment Methode',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(

              children: [
                Container(
                  child: SizedBox(
                    height: 60,
                    width: 450,
                    child: OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/paymentImage/paytm.png'),
                          Text(
                            'Paytm',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  child: SizedBox(
                    height: 60,
                    width: 450,
                    child: OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/paymentImage/gpay.png'),
                          Text(
                            'Gpay',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => gpayPage()));
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  child: SizedBox(
                    height: 60,
                    width: 450,
                    child: OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/paymentImage/bhim.png'),
                          Text(
                            'Bhim',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => paymentFail()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
