import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackatonods/Pages/conocenos.dart';
import 'package:hackatonods/Pages/info.dart';
import 'package:hackatonods/Pages/juego.dart';
import 'package:hackatonods/Pages/lista_amigos.dart';
import 'package:hackatonods/Pages/reto.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List<Widget> _widgetOptions = <Widget>[
    ListaAmigos(),
    Juego(),
    Reto(),
    Conocenos(),
    Info()
  ];

  void _selectedTab(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
              // color: Colors.white,
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo_a.png",
                // height: 100.0,
                width: 60.0,
              ),
              Text("Save the water")
            ],
          )),
          backgroundColor: Color(0xff022e5f),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 50.0,
          items: <Widget>[
            FaIcon(
              FontAwesomeIcons.userFriends,
              size: 25,
              color: Colors.white,
            ),
            FaIcon(FontAwesomeIcons.gamepad, size: 25, color: Colors.white),
            FaIcon(FontAwesomeIcons.home, size: 25, color: Colors.white),
            FaIcon(FontAwesomeIcons.comments, size: 25, color: Colors.white),
            FaIcon(FontAwesomeIcons.infoCircle, size: 25, color: Colors.white),
          ],
          color: Color(0xff022e5f),
          buttonBackgroundColor: Color(0xff97ba3c),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: _selectedTab,
          letIndexChange: (index) => true,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_page),
        ));
  }
}
