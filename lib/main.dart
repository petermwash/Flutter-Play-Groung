import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful Widget App",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String cityName = "";
  var currencies = ['Rupees', 'Dollar', 'Pounds', 'Shillings', 'Others'];
  var currentItemSelected = "Shillings";

  @override
  Widget build(BuildContext context) {
    debugPrint("Favourite City widget is created");

    return Scaffold(
      appBar: AppBar(
        title: Text("My Favourite City"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              ///You can use onSubmitted()
              onChanged: (String userInput) {
                setState(() {
                  debugPrint(
                      "setState() is called, this tells the framework to redraw the FavoriteCity widget");
                  cityName = userInput;
                });
              },
            ),
            DropdownButton<String>(
              items: currencies.map((String dropDownStringItem) {

                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected) {
                ///Here goes the the code to execute when a menu item is selected from the dropdown
                onDropDownItemSelected(newValueSelected);
              },

              value: currentItemSelected,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your Favourite city is $cityName",
                style: TextStyle(fontSize: 20.0, color: Colors.indigo),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this.currentItemSelected = newValueSelected;
    });
  }
}
