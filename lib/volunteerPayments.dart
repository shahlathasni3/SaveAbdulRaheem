import 'package:flutter/material.dart';

import 'P2_home.dart';

class volunteerPayments extends StatelessWidget {
  volunteerPayments({super.key});

  List<String> name = ['Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif'];
  List<String> dist = ['Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode'];
  List<String> assembly = ['Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode', 'Kozhikode'];
  List<dynamic> date = ['16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024', '16-01-2024',];
  List<String> voluntwwe = ['Fasil','Fasil','Fasil','Fasil','Fasil','Fasil',];

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
          'Volunteer Payments',
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
                  hintText: 'Volunteer Id / Mobile Number',
                  suffixIcon: Icon(Icons.search,color: Color(0xFFC46F4E),),
                  contentPadding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
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
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: ScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 175,
                      width: 450,
                      child: Card(
                        margin:  EdgeInsets.symmetric(horizontal: 3,vertical: 8),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Name           :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                        SizedBox(width: 10,),
                                        Text( name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFFC46F4E)),),
                                      ],
                                    ),
        
                                    Row(
                                      children: [
                                        Text('District         :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                        SizedBox(width: 10,),
                                        Text( dist[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                      ],
                                    ),
        
                                    Row(
                                      children: [
                                        Text('Assembly     :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                        SizedBox(width: 10,),
                                        Text( assembly[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                      ],
                                    ),
        
                                    Row(
                                      children: [
                                        Text('Date             :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                        SizedBox(width: 10,),
                                        Text( date[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Text('Voluntwwe   :',style: TextStyle(fontSize: 15,color: Colors.black87),),
                                        SizedBox(width: 10,),
                                        Text( voluntwwe[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('₹ 7,000',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFFC46F4E),),),
                                    Text('08:27 AM',style: TextStyle(fontSize: 10,color: Colors.black),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
