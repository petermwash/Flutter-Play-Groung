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
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("FAB clicked"),
        child: Icon(Icons.add),
        tooltip: "Add One More Item",
        backgroundColor: Colors.blueGrey,
      ),
    ),
  ));
}

///A method to show a SnackBar
///
///Similar FAB, SnackBar should be below our Scaffold widget
///this is because it uses the context from the scaffold widget
void showSnackBar(BuildContext context, String message) {
  var snackBar = SnackBar(
    content: Text("You just clicked $message"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () => debugPrint("Performing Dummy UNDO Action!!")
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
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
      onTap: () => showSnackBar(context, listItems[index]),
    );
  });

  return listView;
}
