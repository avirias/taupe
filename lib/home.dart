import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Ui extends StatefulWidget {
  @override
  UiState createState() {
    return new UiState();
  }
}

class UiState extends State<Ui> {
  bool _isKendallSelected;

  @override
  void initState() {
    super.initState();
    _isKendallSelected = false;
  }

  _horizontalDragStart(DragStartDetails details) {}
  _horizontalDragUpdate(DragUpdateDetails details) {}
  _horizontalDragEnd(DragEndDetails details) {}

  _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: double.infinity,
            margin: EdgeInsets.only(left: 5.0, right: 5.0),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
              child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  color: Colors.white.withOpacity(0.9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height: 6.0,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)),
                              color: Colors.blueGrey.shade800,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 6.0)),
                      Text(
                        "Kendall Jenner",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double atTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              color: Color(0xff575a6c)),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: atTop * 2),
                  child: Text(
                    "Match",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              !_isKendallSelected
                  ? Positioned(
                      left: -width * 0.1,
                      top: width * 0.16 + atTop,
                      child: Material(
                        shape: CircleBorder(),
                        elevation: 10.0,
                        shadowColor: Color(0xff485065),
                        child: InkResponse(
                          onTap: () {
                            setState(() {
                              _isKendallSelected = true;
                            });
                          },
                          child: Container(
                            width: width * 0.78,
                            height: width * 0.78,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(width * 0.39),
                                child: Image.network(
                                  "https://media.metrolatam.com/2018/08/12/kendalljennerbd400d0a6eab5fbe9ac1469976e417b61200x600-46b061e1aa552ee545df4013646be416-1200x800.jpg",
                                  fit: BoxFit.fitHeight,
                                )),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Positioned(
                  right: -width * 0.1,
                  bottom: width * 0.16,
                  child: Material(
                    shape: CircleBorder(),
                    elevation: 10.0,
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          _isKendallSelected = false;
                        });
                      },
                      child: ImageCircle(
                          "http://www.sayidaty.net/sites/default/files/imce/user337856/%D8%AC%D9%8A%D8%AC%D9%8A%20%D8%AD%D8%AF%D9%8A%D8%AF.jpg",
                          width),
                    ),
                  )),
              _isKendallSelected
                  ? Positioned(
                      left: -width * 0.1,
                      top: width * 0.16 + atTop,
                      child: Material(
                        shape: CircleBorder(),
                        elevation: 10.0,
                        shadowColor: Color(0xff485065),
                        child: GestureDetector(
                          onHorizontalDragStart: _horizontalDragStart,
                          onHorizontalDragUpdate: _horizontalDragUpdate,
                          onHorizontalDragEnd: _horizontalDragEnd,
                          onLongPress: _showBottomSheet,
                          child: new ImageCircle(
                              "https://media.metrolatam.com/2018/08/12/kendalljennerbd400d0a6eab5fbe9ac1469976e417b61200x600-46b061e1aa552ee545df4013646be416-1200x800.jpg",
                              width),
                        ),
                      ),
                    )
                  : Container(),
              Positioned(
                bottom: width * 0.2,
                right: width * 0.5,
                child: Material(
                  color: Color(0xff292f4c),
                  shape: StadiumBorder(),
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "GiGi Hadid",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: width * 0.2 + atTop,
                left: width * 0.5,
                child: Material(
                  color: Color(0xff292f4c),
                  shape: StadiumBorder(),
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Kendall Jenner",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: atTop / 1.5),
                  child: OutlineButton(
                    child: Text(
                      "more".toUpperCase(),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    textColor: Colors.white,
                    color: Color(0xff6f91b5),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                    splashColor: Color(0xff6f91b5),
                    highlightElevation: 8.0,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class ImageCircle extends StatelessWidget {
  final String imgSrc;
  final double width;
  const ImageCircle(this.imgSrc, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.78,
      height: width * 0.78,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(width * 0.39),
          child: Image.network(
            imgSrc,
            fit: BoxFit.fitHeight,
          )),
    );
  }
}

class StopWatchX extends StatefulWidget {
  @override
  _StopWatchXState createState() => _StopWatchXState();
}

class _StopWatchXState extends State<StopWatchX> {
  Duration time;
  Stopwatch stopwatch;
  bool _isStopPressed;

  @override
  void initState() {
    super.initState();
    _isStopPressed = false;
    stopwatch.start();
    time = Duration(seconds: 00);
  }

  _handleButton() {
    while(!_isStopPressed){
      setState(() {
        time = stopwatch.elapsed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                time.inSeconds.toString(),
                style: TextStyle(fontSize: 30.0,color: Colors.blueGrey),
              ),
            ),
            !_isStopPressed
                ? OutlineButton(
                    child: Text("Start".toUpperCase(),style: TextStyle(fontSize: 25.0)),
                    onPressed: (){
                      _handleButton();},
                  )
                : OutlineButton(
                    child: Text("Stop".toUpperCase(),style: TextStyle(fontSize: 25.0)),
                    onPressed: () {
                      setState(() {
                        _isStopPressed = true;
                      });
                    },
                  )
          ],
        ),
      ),
    );
  }
}
