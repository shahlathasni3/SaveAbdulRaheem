import 'package:flutter/material.dart';

import 'P2_home.dart';

class poster extends StatelessWidget {
  const poster({super.key});

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
          'Poster',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 405,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  height: 68,
                  width: 450,
                  child: FloatingActionButton.extended(
                    label: Text(
                      'Upload Photo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    icon: Icon(Icons.file_upload_outlined,color: Colors.white),
                    backgroundColor: Color(0xFFC46F4E),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 68,
                  width: 450,
                  child: FloatingActionButton.extended(
                    label: Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    icon: Icon(Icons.shortcut,color: Colors.white),
                    backgroundColor: Color(0xFFC46F4E),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
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
