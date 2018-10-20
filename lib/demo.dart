import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(backgroundColor: Colors.white,elevation: 0.0,),
      body: Container(
//        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            gradient: LinearGradient(
                colors: [
                  Colors.blueGrey.shade100,
                  Colors.blueGrey.shade300,
                  Colors.blueGrey,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to ISM Patna",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
            Material(
              shadowColor: Colors.blueGrey.shade100,
              elevation: 7.0,
              child: RaisedButton(
                child: Text(
                  "click here".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                color: Colors.blueGrey.shade700,
                splashColor: Colors.blueGrey.shade100,
                elevation: 0.0,
                onPressed: () {},
                shape: StadiumBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
