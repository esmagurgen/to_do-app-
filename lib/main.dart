import 'package:flutter/material.dart';

//Flutter'da elevation, bir widget'ın ekrandan ne kadar yüksekte (havada) durduğunu belirleyen özelliktir. Arayüze 3 boyutlu bir derinlik katar ve widget'ın arkasına gölge (shadow) ekler.
//Flutter'da leading, bir satırın veya başlığın en başında (sol tarafında) yer alan ögeyi belirleyen parametredir.
//Flutter'da mainAxisAlignment, bir Row (satır) veya Column (sütun) içindeki elemanların ana eksen (main axis) üzerinde nasıl hizalanacağını ve aralarındaki boşlukların nasıl dağıtılacağını belirleyen özelliktir.
//Flutter'da Expanded, bir Row, Column veya Flex içinde bulunan elemanın kalan tüm boş alanı kaplamasını sağlayan widget'tır.
//İçine koyduğunuz widget'ı esnetir ve ekranda boş yer bırakmayacak şekilde doldurur
//Container sadece bir tane child kabul eder.Daha falzası için Column veya Row içinde childrem:[] kullanılır
void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("my app bar"),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        //ListView, yazılımda (özellikle Flutter, Android, React Native gibi mobil ve web geliştirme teknolojilerinde) birden fazla ögeyi dikey veya yatay olarak sıralayan ve ekrana sığmayan ögeleri kaydırmayı (scroll) sağlayan bir liste bileşenidir (widget/component).
        body: GridView.builder(
          itemCount: 64,
          gridDelegate:
              //yatayda kaç tane var
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 16),
          itemBuilder: (context, index) =>
              Container(color: Colors.deepPurple, margin: EdgeInsets.all(2)),
        ),
      ),
    );
  }
}
