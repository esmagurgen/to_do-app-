import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      drawer: Drawer(
        backgroundColor: Colors.deepOrange,
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("homee"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {
                //geri geldiğimizde drwaer ın tekrardan karşımıza çıkmasını engellemek lazım
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
