import 'package:flutter/material.dart';
import 'package:saveabdulrahim/paymentSuccess.dart';
import 'package:saveabdulrahim/poster.dart';

import 'P2_home.dart';

class history extends StatelessWidget {
  history({super.key});

  List<String> name = ['Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif'];
  List<String> dist = ['Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode'];
  List<String> assembly = ['Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode'];
  List<dynamic> date = ['16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024',];


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
          'My History',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                // keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 12, color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Transaction Id',
                  suffixIcon: Icon(Icons.search,color: Color(0xFFC46F4E),),
                  contentPadding: EdgeInsets.symmetric(horizontal: 130, vertical: 10),
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
            ListView.builder(
                padding: EdgeInsets.zero,
                physics: ScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    margin:  EdgeInsets.symmetric(horizontal: 3,vertical: 8),
                    child: ListTile(
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
        
                                    children: [
                                      Text('Name        :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                      SizedBox(width: 10,),
                                      Text( name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFFC46F4E)),),
                                    ],
                                  ),
        
                                  Row(
                                    children: [
                                      Text('District      :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                      SizedBox(width: 10,),
                                      Text( dist[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                    ],
                                  ),
        
                                  Row(
                                    children: [
                                      Text('Assembly  :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                      SizedBox(width: 10,),
                                      Text( assembly[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                    ],
                                  ),
        
                                  Row(
                                    children: [
                                      Text('Date          :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                      SizedBox(width: 10,),
                                      Text( date[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 60),
                                child: Column(
                                  children: [
                                    Text('₹ 7,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFFC46F4E),),),
                                    Text('08:27 AM',style: TextStyle(fontSize: 10,color: Colors.black),),
                                    Row(
                                      children: [
                                        Image.asset('assets/paymentImage/ps.png',scale: 3,),
                                        SizedBox(width: 8,),
                                        Text('Success!',style: TextStyle(fontFamily: 'Libre Baskerville',fontSize: 15.0,fontWeight: FontWeight.w700,color: Colors.green[700],),),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 30,),
                                child: FloatingActionButton.extended(

                                  label: Text(
                                    'Map Volunteer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),

                                  ),
                                  backgroundColor: Color(0xFFC46F4E),
                                  onPressed: () {},
                                  elevation: BorderSide.strokeAlignCenter,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 15,),
                                child: FloatingActionButton.extended(
                                  label: Text(
                                    'Change Assembly',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),

                                  ),
                                  backgroundColor: Color(0xFFC46F4E),
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => poster()));
                                  },
                                  elevation: BorderSide.strokeAlignCenter,
                                ),
                              ),
                              // OutlinedButton(
                              //     style: OutlinedButton.styleFrom(backgroundColor: Color(0xFFC46F4E),),
                              //     onPressed: (){
                              //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => paymentSuc()));
                              //     },
                              //     child: Text('Map Volunteer',style: TextStyle(fontSize: 18,color: Colors.white,),),
                              // ),
                              // SizedBox(width: 2,),
                              // OutlinedButton(
                              //   style: OutlinedButton.styleFrom(backgroundColor: Color(0xFFC46F4E),),
                              //   onPressed: (){
                              //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => paymentSuc()));
                              //   },
                              //   child: Text('Change Assembly',style: TextStyle(fontSize: 18,color: Colors.white,),),
                              // ),
        
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),


    );
  }
}
