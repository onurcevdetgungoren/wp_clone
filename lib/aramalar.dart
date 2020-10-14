import 'package:flutter/material.dart';

class Aramalar extends StatefulWidget {
  @override
  _AramalarState createState() => _AramalarState();
}

class _AramalarState extends State<Aramalar> {
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
              "Aramalar",
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
      Container(
        height: 66,
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.google.com/s2/u/0/photos/public/AIbEiAIAAABDCNbJvdiwps2TOSILdmNhcmRfcGhvdG8qKDIzYzJhMjE0ZDBjNjU2MjVlM2IyMDJmNjJjNTZiNmI5ZGI0NmYxNTMwAeJhwERZSeBODX2FJK_vjTasAu_o?sz=48"),
            ),
            title: Text("Atamer Şahin", style: TextStyle(color: Colors.red)),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.phone),
                Text("Cevapsız"),
              ],
              
            ),
            trailing: Text("18:45", style: TextStyle(color: Colors.red)),
          ),
        ),
      ),
      Container(
        height: 66,
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/ogw/ADGmqu-R0MQCsznpZX4gXe7V4b0aVhWGbWhmJ7wdoJyc=s83-c-mo",
              ),
            ),
            title: Text("Onur Cevdet Güngören"),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.phone),
                Text("Giden"),
              ],
            ),
            trailing: Text("Dün",),
          ),
        ),
      ),
      Container(
        height: 66,
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1246836027236519937/FnM_lwnj_400x400.jpg",
              ),
            ),
            title: Text("Tevfik"),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.phone),
                Text("Gelen"),
              ],
            ),
            trailing: Text("18.09.2020"),
          ),
        ),
      ),
    ];
  }
}
