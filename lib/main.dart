import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/first_page.dart';

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
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
     home:FirstPage(),
     );
  }
}
