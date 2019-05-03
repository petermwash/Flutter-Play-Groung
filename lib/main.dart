import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
        backgroundColor: Colors.blueGrey,
      ),
      body: getListView(),
    ),
  ));
}

/// Here we are preparing the Data Source
List<String> getListItems() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");

  return items;
}

/// Here we are converting the Data Source into widgets
/// Then Using them as children of a ListView
Widget getListView() {
  var listItems = getListItems();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.art_track),
      title: Text(listItems[index]),
      onTap: () => debugPrint("${listItems[index]} was TAPPED!!"),
    );
  });

  return listView;
}
