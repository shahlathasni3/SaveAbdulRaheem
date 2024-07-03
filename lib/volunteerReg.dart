import 'package:flutter/material.dart';

import 'P2_home.dart';

class volunteerReg extends StatelessWidget {
  const volunteerReg({super.key});

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
          'Volunteer Registration',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Open Sans',
                  color: Color(0xFFC46F4E),
                ),
            ),
          ),

          Text(
            "As a volunteer",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Open Sans',
            ),
          ),

          Container(child: Column(
            children: [
              Card(
                child: TextField(
                  // keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Name',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  // keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),

              Card(
                child: TextField(
                  // keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Panchayath',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),)

        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 65,
          width: 350,
          child: FloatingActionButton.extended(
            label: Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
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
