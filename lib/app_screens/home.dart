import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(top: 40.0, left: 10.0),
          alignment: Alignment.center,
          color: Colors.amber,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        //fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mumbai to Bangalore via New Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        //fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        //fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Jaipur to Goa",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        //fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              ),
              FlightImageAsset(),
              FlightBookButton(),
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/download.jpeg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          bookFlight(context);
        },
        child: Text(
          "Book Your Flight",
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasent flight"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        }
    );
  }
}