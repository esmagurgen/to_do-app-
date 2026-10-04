import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable

  int _counter = 0;
  //method
  void _incrementCounter() {
    //setState, Flutter ve React gibi UI (kullanıcı arayüzü) kütüphanelerinde ekrandaki görüntüyü güncellemeye (yeniden çizdirmeye) yarayan temel fonksiyondur.
    setState(() {
      _counter++;
    });
  }
  //ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
        children: [
          Text("you have pushed this button this many times."),
          Text(
            _counter.toString(),
            style: TextStyle(fontSize:48 ),),
            ElevatedButton(onPressed: _incrementCounter, child: Text("increment"))
        ],
      ),) 
    );
  }
}
