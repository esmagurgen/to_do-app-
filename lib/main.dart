import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
   const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.blue,
        body:Center(
          child:Container(
          height: 300,
          width: 300, 
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(20),

          ), 
         child: Text(
          "HELLO WORLD",
          style: TextStyle(color: Colors.white,fontSize: 28),
          ),
        ),
        ),

      ),
      );
  }
}
