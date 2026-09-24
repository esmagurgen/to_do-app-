import 'package:flutter/material.dart';
//Flutter'da elevation, bir widget'ın ekrandan ne kadar yüksekte (havada) durduğunu belirleyen özelliktir. Arayüze 3 boyutlu bir derinlik katar ve widget'ın arkasına gölge (shadow) ekler.
//Flutter'da leading, bir satırın veya başlığın en başında (sol tarafında) yer alan ögeyi belirleyen parametredir.
//Container sadece bir tane child kabul eder.Daha falzası için Column veya Row içinde childrem:[] kullanılır 
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
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("my app bar"),
          elevation: 0,
          leading:Icon(Icons.menu)  ,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          ),
        backgroundColor: Colors.blue,

        body:Center(
          child:Container(
          height: 300,
          width: 300, 
          decoration: BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.circular(20),
          ), 
          child:Icon(
            Icons.favorite,
           color: Colors.indigoAccent,
           size:64
            ),
        ),
        ),

      ),
      );
  }
}
