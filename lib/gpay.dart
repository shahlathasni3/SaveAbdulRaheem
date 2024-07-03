import 'package:flutter/material.dart';
import 'package:saveabdulrahim/P2_home.dart';
import 'package:saveabdulrahim/paymentSuccess.dart';

class gpayPage extends StatelessWidget {
  const gpayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 145, left: 145, right: 145),
            child: CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("assets/pay/me.jpeg"),
            ),
          ),
          SizedBox(height: 20),
          Text(
              "Date Challange",
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/paymentImage/ps.png',scale: 3,),

              Text("Banking Name : Federal Bank")
            ],
          ),
          SizedBox(height: 18),
          Text(
              'Fundcollection@sbl',
          style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 65),
          Text(
            '₹ 7,000',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xFF464747),
            ),
          ),
          SizedBox(height: 55),
          Container(
            height: 70,
            width: 250,
            child: Center(
              child: Text(
                  'tx 1298857929403659',

              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFdae0e0),
            ),
          ),
          SizedBox(height: 45),
          Card(

            child: Container(
              child: Column(
                children: [
                  Text(
                      'Choose account to pay with',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset('assets/pay/fed.png'),
                    Column(children: [
                      Text("Federal Bank ....6177"),
                      Text("Saving account"),
                    ],),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    ),

                  ],),
                  SizedBox(height: 20,),
                  OutlinedButton(

                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFF3125d9),

                    ),

                    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => paymentSuc()));
                    },

                      child: Text(
                          'Pay ₹7,000',
                      style: TextStyle(
                        fontSize: 18,
                      color: Colors.white,),
                      ),
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
