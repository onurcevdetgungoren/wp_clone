import 'package:flutter/material.dart';

class Durum extends StatefulWidget {
  @override
  _DurumState createState() => _DurumState();
}

class _DurumState extends State<Durum> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 100,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: Text(
              "Durum",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(_statikList())),
      ],
    );
  }

  List<Widget> _statikList() {
    return [
      SizedBox(height: 100,),
      Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://lh3.googleusercontent.com/ogw/ADGmqu-R0MQCsznpZX4gXe7V4b0aVhWGbWhmJ7wdoJyc=s83-c-mo",
            ),
          ),
          title: Text("Durumum"),
          subtitle: Text("Durumuma Ekle"),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Icon(Icons.photo_camera, size: 40,),
          ),
        ),
      ),
      SizedBox(height: 100,),
      Padding(
        padding: const EdgeInsets.only(left:15.0, bottom:8.0),
        child: Text("SON GÜNCELLEMELER"),
      ),
      Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.google.com/s2/u/0/photos/public/AIbEiAIAAABDCNbJvdiwps2TOSILdmNhcmRfcGhvdG8qKDIzYzJhMjE0ZDBjNjU2MjVlM2IyMDJmNjJjNTZiNmI5ZGI0NmYxNTMwAeJhwERZSeBODX2FJK_vjTasAu_o?sz=48"),
          ),
          title: Text("Atamer Şahin"),
          subtitle: Text("İçerik"),
        ),
      ),
      SizedBox(height: 100,),
      Padding(
        padding: const EdgeInsets.only(left:15.0, bottom:8.0),
        child: Text("GÖRÜLEN GÜNCELLEMELER"),
      ),
      Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://pbs.twimg.com/profile_images/1246836027236519937/FnM_lwnj_400x400.jpg",
            ),
          ),
          title: Text("Ahmet"),
          subtitle: Text("İçerik"),
        ),
      ),
    ];
  }
}
