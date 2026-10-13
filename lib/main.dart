import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/to_do_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(MyWidget());

  //init the hive
  await Hive.initFlutter();

  //open the box
  var box = await Hive.openBox('my box');
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //burada demo yazısını kaldırdık.
      debugShowCheckedModeBanner: false,
      //ana sayfamızın to do page olacagını belırttık yanı ılk acıldıgında ToDoPage gozukucek.
      home: ToDoPage(),
    );
  }
}
