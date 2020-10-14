import 'package:flutter/material.dart';

class Sohbetler extends StatefulWidget {
  @override
  _SohbetlerState createState() => _SohbetlerState();
}

class _SohbetlerState extends State<Sohbetler> {
  List<Kisiler> kisiler = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kisiler = [
      Kisiler("Andaç Yılmaz Saray", "İçerik", "AS"),
      Kisiler("Ebru Baş", "İçerik", "EB"),
      Kisiler("Ali Korkmaz", "İçerik", "AK"),
      Kisiler("Veli Yıldırım", "İçerik", "VY"),
      Kisiler("Necati Bibi", "İçerik", "NB"),
      Kisiler("Mehmet Ali", "İçerik", "MA"),
      Kisiler("Ali İhsan", "İçerik", "AI"),
      Kisiler("Andaç Yılmaz Saray", "İçerik", "AS"),
      Kisiler("Ebru Baş", "İçerik", "EB"),
      Kisiler("Ali Korkmaz", "İçerik", "AK"),
      Kisiler("Veli Yıldırım", "İçerik", "VY"),
      Kisiler("Necati Bibi", "İçerik", "NB"),
      Kisiler("Mehmet Ali", "İçerik", "MA"),
      Kisiler("Ali İhsan", "İçerik", "AI"),
    ];
  }

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
              "Sohbetler",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(_statikList())),
        SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikList, childCount: 10)),
      ],
    );
  }

  List<Widget> _statikList() {
    return [
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
      Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://lh3.googleusercontent.com/ogw/ADGmqu-R0MQCsznpZX4gXe7V4b0aVhWGbWhmJ7wdoJyc=s83-c-mo",
            ),
          ),
          title: Text("Onur Cevdet Güngören"),
          subtitle: Text("İçerik"),
        ),
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

  Widget _dinamikList(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(kisiler[index]._avatar),
        ),
        title: Text(kisiler[index]._ad),
        subtitle: Text(kisiler[index]._icerik),
      ),
    );
  }
}

class Kisiler {
  String _avatar;
  String _ad;
  String _icerik;

  Kisiler(this._ad, this._icerik, this._avatar);
}
