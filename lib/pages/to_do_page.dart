import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();
  void greetUser() {
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //TextField, kullanıcının klavye aracılığıyla metin (yazı, sayı, şifre vb.) girmesini sağlayan temel arayüz (UI) bileşenidir.
          children: [
            TextField(controller: myController),
            ElevatedButton(onPressed: greetUser, child: Text("tap")),
          ],
        ),
      ),
    );
  }
}
