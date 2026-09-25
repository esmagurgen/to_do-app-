import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      body: Center(
        //ElevatedButton, Flutter'da arka planı renkli, hafif kabartmalı (gölgeli) ve üzerine tıklandığında derinlik hissi veren standart ana buton bileşenidir.onPressed ve child(butonun içindeki yazı veya simge) ihtiyaç duyar.
        child: ElevatedButton(
          child: Text("2nd page"),
          onPressed: () {
            //Navigator, Flutter'da sayfalar (route) arasındaki geçişleri ve ekran akışını yöneten mekanizmadır.
            Navigator.push(
              context,
              //Geçiş sırasında platforma uygun (Android/iOS tarzı) sayfa kayma animasyonunu otomatik olarak sağlar.  
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
