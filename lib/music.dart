import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
//        gradient: LinearGradient(
//          colors: [
//           Colors.blueGrey.shade800,
//            Colors.blueGrey.shade600,
//            Colors.blueGrey.shade400,
//            Colors.blueGrey.shade300
//          ],
//          begin: Alignment.topCenter,
//          end: Alignment.bottomCenter,
//          tileMode: TileMode.clamp,
//        ),
            color: CupertinoColors.white),
        child: Material(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
                  Material(
                    child: Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
//                    gradient: LinearGradient(
//                      colors: [
//                        Colors.black
//                      ],
//                      begin: Alignment.topLeft,
//                      end: Alignment.bottomRight
//                    ),
                          color: Colors.redAccent,
                        ),
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.35,
                            right: MediaQuery.of(context).size.width * 0.35),
                        height: MediaQuery.of(context).size.width * 0.13,
                        child: Center(
                          child: Text(
                            "Music".toUpperCase(),
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  NewTile(),
                ]),
              )
            ],
          ),
        ));
  }
}

class NewTile extends StatelessWidget {
  final String name;
  final String usrImg;
  final String content;
  NewTile({
    this.name = "Avinash Kumar",
    this.usrImg = "https://avatars0.githubusercontent.com/u/17480651?s=460&v=4",
    this.content = "Listening to Nirvana, AC/DC, Pink Floyd"
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              usrImg),
          maxRadius: 38.0,
          minRadius: 35.0,
        ),
        subtitle: Container(
        padding: EdgeInsets.only(top: 2.0),
          child: Text(
            content,
            style: TextStyle(fontSize: 18.0,color: Colors.black),
            textAlign: TextAlign.left,
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        trailing: IconButton(
            icon: Icon(Icons.add_circle), onPressed: () {}),
        isThreeLine: true,
      ),
    );
  }
}
