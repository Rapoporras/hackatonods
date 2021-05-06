import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Juego extends StatefulWidget {
  Juego({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _JuegoState createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {
  bool star = false;

  // String gameStart(){
  //   String imagen = "";
  //   if(star ==false){
  //     imagen
  //   }

  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Ayuda a nuestros amigos a ahorrar agua",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            )),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Time: 00:00",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Score: 0000",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff1f1f1),
                // color: Color(0xff022e5f),
                border: Border.all(width: 1, color: Color(0xff022e5f)),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/game.png",
                // height: 500.0,
                width: double.infinity,
              ),
            ),
            InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff97ba3c),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text("Marcar como Completado"),
                ),
                onTap: () {
                  setState(() {
                    star = !star;
                  });
                })
          ],
        )
      ],
    ));
  }
}
