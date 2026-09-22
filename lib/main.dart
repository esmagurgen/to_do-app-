import 'package:flutter/material.dart';

//1.uygulama giriş noktası
//Dart dilinde uygulamanın çalışmaya basladıgı ilk fonksıyondur.
void main() {
  //runApp():parametre olarak verilen widget ı ekrana cızer ve uygulamanıın kok(root) elemanı yapar
  runApp(const MyWidget());
}

//Stateless Widget:ekrandaki verileri kullanıcı etkılesımıyle degısmeyen,durum(state) tutmayan sabit arayüz degiskenlerı ıcın kullanılır
class MyWidget extends StatelessWidget {
  const new({super.key});
  //arayüz olusturma:
  //@override:Stateless widget sınıfından gelen build methodunu kendi tasarımımızla degıstırgını gosterir
  //Widget build():ekrana cızılecek tasarımı dondurur
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:uygulama ılk acıldıgınd acılıcak sayfayı belırler
      //Scaffhold:material design sayfa yapısının iskeletidir
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //parantezler içine yazdıgımız sayı aslında rengın tonunu belirliyor
        backgroundColor: Colors.blue[250],
        //Container flex bir widgettır farklı amaclar ıcın kullanılır
        //Center da bir widgettır
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration
            (color: Colors.amber,
             borderRadius: BorderRadius.circular(20)
            ),   
            padding:EdgeInsets.only(left:25,top:25),
            child: Text(
              "hello world",
              style:TextStyle(
                color:Colors.white,
                fontSize:28,
                fontWeight: FontWeight.bold
              )
              ),
          ),
        ),
      ),
    );
  }
}
