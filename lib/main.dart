import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/to_do_page.dart';

void main() {
 runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToDoPage()
    );
  }
}
