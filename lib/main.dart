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
                  debugPrint("setState() is called, this tells the framework to redraw the FavoriteCity widget");
                  cityName = userInput;
                });
              },
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
}
