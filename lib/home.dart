import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Ui extends StatefulWidget {
  @override
  UiState createState() {
    return new UiState();
  }
}

class UiState extends State<Ui> {

  bool isAvinashSelected;

  @override
  void initState() {
    super.initState();
    isAvinashSelected = false;
  }
  _horizontalDragStart(DragStartDetails details)
  {

  }
  _horizontalDragUpdate(DragUpdateDetails details)
  {

  }
  _horizontalDragEnd(DragEndDetails details) {
  }

 _modalBottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          height: 500.0,
          decoration: ShapeDecoration(color: CupertinoColors.lightBackgroundGray,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)))),

        );
      }
    );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
//            gradient: LinearGradient(colors: [
//              Colors.white,
//              Color(0xffd24f6b).withOpacity(0.9),
//              Color(0xffd24f6b).withOpacity(0.8),
//              Color(0xffd24f6b).withOpacity(0.7),
//              Color(0xffd24f6b).withOpacity(0.6),
//            ],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                color: Color(0xff485065)),
            child: Stack(
              children: <Widget>[
                !isAvinashSelected
                    ? Positioned(
                        left: -50.0,
                        top: 80.0,
                        child: Material(
                          shape: CircleBorder(),
                          elevation: 10.0,
                          shadowColor: Color(0xff485065),
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                isAvinashSelected = true;
                              });
                            },
                            child: Container(
                              width: 380.0,
                              height: 380.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(190.0),
                                  child: Image.network(
                                    "https://avatars1.githubusercontent.com/u/17480651?s=400&v=4",
                                  )),
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Positioned(
                    right: -50.0,
                    top: 320.0,
                    child: Material(
                      shape: CircleBorder(),
                      elevation: 10.0,
                      child: InkResponse(
                        onTap: () {
                          setState(() {
                            isAvinashSelected = false;
                          });
                        },
                        child: ImageCircle(
                            "https://avatars1.githubusercontent.com/u/39170113?s=400&v=4"),
                      ),
                    )),
                isAvinashSelected
                    ? Positioned(
                        left: -50.0,
                        top: 80.0,
                        child: Material(
                          shape: CircleBorder(),
                          elevation: 10.0,
                          shadowColor: Color(0xff485065),
                          child: GestureDetector(
                            onHorizontalDragStart: _horizontalDragStart,
                            onHorizontalDragUpdate: _horizontalDragUpdate,
                            onHorizontalDragEnd: _horizontalDragEnd,
                            onLongPress: _modalBottomSheet,
                            child: new ImageCircle(
                                "https://avatars1.githubusercontent.com/u/17480651?s=400&v=4"),
                          ),
                        ),
                      )
                    : Container(),
                Positioned(
                  bottom: 110.0,
                  left: 120.0,
                  child: Material(
                    color: Color(0xff9edde9),
                    shape: StadiumBorder(),
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Pankaj Patidar",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 85.0,
                  left: 200.0,
                  child: Material(
                    color: Color(0xff9edde9),
                    shape: StadiumBorder(),
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Avinash Kumar",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );

  }
}

class ImageCircle extends StatelessWidget {
  final String imgSrc;
  const ImageCircle(this.imgSrc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0,
      height: 380.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(190.0),
          child: Image.network(
            imgSrc,
          )),
    );
  }
}
