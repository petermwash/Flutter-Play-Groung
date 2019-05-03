import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Flight",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Nairobi to Kigali",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Flight",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mombasa to zanzibar",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              FlightImageAsset(),
              FlightBookingButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/flight.png");
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );

    return Container(
      child: image,
    );
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      child: RaisedButton(
          color: Colors.lightGreen,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20.0,
            ),
          ),
          elevation: 6.0,
          onPressed: () {
            //action to be performed
            bookFlight(context);
          }),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked succefully"),
      content: Text("Have a Beatiful Flight. Bye!"),
    );

    showDialog(
        context: context,
        //here, builder is a method handler
        builder: (BuildContext context) => alertDialog);
  }
}
