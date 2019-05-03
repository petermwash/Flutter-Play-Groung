import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring ListView",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Basic ListView"),
        backgroundColor: Colors.blueGrey,
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.laptop_mac),
        title: Text("Laptop Mac"),
        subtitle: Text("MacBook 2017"),
        trailing: Icon(Icons.laptop_mac),
        onTap: () => debugPrint(
          "Laptop Mac was tapped!!"
        ),
      ),
      ListTile(
        leading: Icon(Icons.laptop_windows),
        title: Text("Laptop Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yet anothe element of the list"),
      Container(color: Colors.blueGrey, height: 50.0,)
    ],
  );
  return listView;
}
