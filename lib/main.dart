import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/to_do_page.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //burada demo yazısını kaldırdık.
      debugShowCheckedModeBanner: false,
      //ana sayfamızın to do page olacagını belırttık yanı ılk acıldıgında ToDoPage gozukucek.
      home:ToDoPage(),
    );
  }
}
