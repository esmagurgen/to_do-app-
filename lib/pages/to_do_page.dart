import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();
  String greetingMessage = "";
  void greetUser() {
    setState(() {
       greetingMessage = "Hello," + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //TextField, kullanıcının klavye aracılığıyla metin (yazı, sayı, şifre vb.) girmesini sağlayan temel arayüz (UI) bileşenidir.
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "type your name",
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("tap")),
            ],
          ),
        ),
      ),
    );
  }
}
