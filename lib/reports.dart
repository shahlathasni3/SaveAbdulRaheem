import 'package:flutter/material.dart';
import 'package:saveabdulrahim/P2_home.dart';

class reports extends StatefulWidget {
  reports({super.key});

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> {
  List<String> name = ["Kerala", "Kerala", "Kerala",'Kerala','Kerala'];

  List<String> subName = ["Kozhikode", "Kozhikode", "Kozhikode","Kozhikode","Kozhikode"];

  List<dynamic> money = ['₹37,000', '₹37,000', '₹37,000','₹37,000','₹37,000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 15,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          )
        ],
        title: Text(
          'Reports',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Select State',
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
            padding: const EdgeInsets.all(25),
            child: TextField(
              keyboardType: TextInputType.number,
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
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              decoration: InputDecoration(
                hintText: 'Select Assembly',
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
          Container(
            height: 65,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xFFC46F4E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Collected:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Colors.white),
                ),
                Text(
                  '₹1,163,575',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w800,color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Container(
                    child: Card(
                      child: ListTile(
                          title: Column(
                            children: [
                              Text( name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFFC46F4E),),),
                              Text(subName[index]),
                              // Text(subName[index]),
                            ],
                          ),
                          // subtitle: Text(subName[index]),
                          trailing: Text(money[index],style: TextStyle(fontWeight: FontWeight.w800,fontSize: 23,color: Color(0xFFC46F4E),),),
                      ),
                    ),
                  );

                }),
          ),
        ],
      ),


    );
  }
}
