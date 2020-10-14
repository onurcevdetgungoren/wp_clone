import 'package:flutter/material.dart';

import 'aramalar.dart';
import 'durum.dart';
import 'kamera.dart';
import 'sohbetler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuitem = 0;
  Sohbetler sayfaSohbet;
  Durum sayfaDurum;
  Kamera sayfaKamera;
  Aramalar sayfaArama;
  List<Widget> sayfalar;
  List<String> baslik;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaSohbet = Sohbetler();
    sayfaDurum = Durum();
    sayfaKamera = Kamera();
    sayfaArama = Aramalar();
    sayfalar = [sayfaDurum, sayfaArama, sayfaKamera, sayfaSohbet];
    baslik = ["Durum", "Aramalar", "Kamera", "Sohbetler"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(icon: Icon(Icons.edit, color: Colors.blue,), onPressed: () {})),
        title: Text(baslik[secilenMenuitem], style: TextStyle(color: Colors.black,),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.message, color: Colors.blue,),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
      body: sayfalar[secilenMenuitem],
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.satellite, color: Colors.blue,),
            icon: Icon(
              Icons.satellite,
              color: Colors.black,
            ),
            title: Text(
              "Durum",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.phone_iphone, color: Colors.blue,),
            icon: Icon(
              Icons.phone_iphone,
              color: Colors.black,
            ),
            title: Text(
              "Aramalar",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.camera,
              color: Colors.black,
            ),
            title: Text(
              "Kamera",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black,
            ),
            title: Text(
              "Mesajlar",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.settings, color: Colors.blue,),
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text(
              "Ayarlar",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: secilenMenuitem,
      onTap: (s) {
        setState(() {
          secilenMenuitem = s;
        });
      },
    );
  }
}
