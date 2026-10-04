import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/counter_page.dart';

// main ismi yanlış veya eksik
void main() {
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CounterPage()
    );
  }
}

