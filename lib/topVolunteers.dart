import 'package:flutter/material.dart';

import 'P2_home.dart';

class topVolunteers extends StatelessWidget {
   topVolunteers({super.key});

  List<String> image =['assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png'];
  List<String> name = ['Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif','Muhammed Asif'];
  List<String> subName =["Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode","Kozhikode,Kozhikode"];
  List<String> subName2 = ["Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode","Kozhikode"];
  List<dynamic> money = ['₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146'];


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
          'Top Volunteers',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.zero,
          // scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 9,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Container(
              height: 75,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFC46F4E),
              ),

              margin:  EdgeInsets.symmetric(horizontal: 3,vertical: 8),
              child: ListTile(
                leading: Image.asset(image[index],),
                title: Text( name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                subtitle: Text(subName[index],style: TextStyle(fontSize: 13,color: Colors.white),),
                trailing: Text(money[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),
              ),
            );

          }),
    );
  }
}
