import 'package:flutter/material.dart';

import 'P2_home.dart';

class topDistrict extends StatelessWidget {
  topDistrict({super.key});

  List<String> image =['assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png','assets/top/top.png'];
  List<String> name = ['Kozhikode','Kozhikode','Kozhikode','Kozhikode','Kozhikode','Kozhikode','Kozhikode','Kozhikode','Kozhikode'];
  List<dynamic> money = ['₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146','₹4,35,85,146',];

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
          'Top Reports',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10,top: 20),
                    child: SizedBox(
                      height: 65,
                      width: 145,
                      child: FloatingActionButton.extended(
                        label: Text(
                          'Assembly',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
        
                        ),
                        backgroundColor: Color(0xFFC46F4E),
                        onPressed: () {},
                      ),
                    ),
                  ),),
                  Container(child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 20),
                    child: SizedBox(
                      height: 65,
                      width: 145,
                      child: FloatingActionButton.extended(
                        label: Text(
                          'Top Panchayath',
                          style: TextStyle(
                            color: Color(0xFFC46F4E),
                            fontSize: 15,
                          ),
        
                        ),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),),
                ],
              ),
            ),
            SizedBox(height: 45,),

            SizedBox(height: 15,),
            ListView.builder(
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
                      // image: DecorationImage(image: AssetImage('assets/top/bi.png'), fit: BoxFit.cover,),
                      color: Color(0xFFC46F4E),
                    ),

                    margin:  EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: ListTile(
                      leading: Image.asset(image[index],),
                      title: Text( name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                      trailing: Text(money[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),
                    ),
                  );

                }),
          ],
        ),
      ),
    );
  }
}
