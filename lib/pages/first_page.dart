import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:habit_tracker/pages/home_page.dart';
import 'package:habit_tracker/pages/profile_page.dart';
import 'package:habit_tracker/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //bu fonksiyon selected index update etmek için kullanılıyo
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  //bu liste navigation barda butonlara bastıgımızda gereken sayfaya yonlendırıyor
  final List _pages = [
    //home page
    HomePage(),

    //Profile page
    ProfilePage(),

    //Settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      body: _pages[_selectedIndex],
      //bottomNavigationBar, Flutter'da Scaffold widget'ının alt kısmında yer alan, kullanıcının ana sekmeler (Ana Sayfa, Arama, Profil vb.) arasında hızlıca geçiş yapmasını sağlayan alt gezinme çubuğudur.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),

          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}
