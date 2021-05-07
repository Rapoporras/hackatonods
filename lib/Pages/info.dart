import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Info extends StatefulWidget {
  Info({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  height: 50,
                  decoration: new BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      // shape: BoxShape.circle,
                      image: new DecorationImage(
                          // fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://innovacioncolectiva.es/wp-content/uploads/brizy/8154/assets/images/iW=232&iH=232&oX=0&oY=82&cW=232&cH=67/Imagen-de-iOS-3.png")))),
              Container(
                  width: 100,
                  height: 50,
                  decoration: new BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      // shape: BoxShape.circle,
                      image: new DecorationImage(
                          // fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://innovacioncolectiva.es/wp-content/uploads/brizy/8154/assets/images/iW=190&iH=190&oX=0&oY=50&cW=190&cH=89/Imagen-de-iOS-6.png")))),
              Container(
                  width: 100,
                  height: 50,
                  decoration: new BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      // shape: BoxShape.circle,
                      image: new DecorationImage(
                          // fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://innovacioncolectiva.es/wp-content/uploads/brizy/8154/assets/images/iW=233&iH=233&oX=0&oY=83&cW=233&cH=67/Imagen-de-iOS-4.png")))),
            ],
          ),
        ),
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 120,
                  height: 90,
                  decoration: new BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      // shape: BoxShape.circle,
                      image: new DecorationImage(
                          // fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/rapoporras-2c44a.appspot.com/o/logo.png?alt=media&token=40e4f66e-28ae-4fa3-b07a-f8dbadd55503")))),
              Container(
                  width: 120,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                      color: Color(0xff022e5f),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      // border: Border.all(width: 1, color: Colors.grey),
                      // shape: BoxShape.circle,
                      image: new DecorationImage(
                          // fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://www.hidralia-sa.es/documents/345987/346546/logo_hidralia_sin_caja.png/3463c5e7-6833-ac5a-ab4b-eb989d16d9f6?t=1562846589286")))),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: new BoxDecoration(
                color: Color(0xff022e5f),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(width: 1, color: Colors.grey),
                // shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nombre: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("Elena Madrid Fernández",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Correo: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("elenamadfer@gmail.com",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Titulo: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white)),
                      Text(
                          "Grado en Publicidad y Relaciones Públicas o Máster en Dirección Estratégica e Innovación en Comunicación",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          // textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: new BoxDecoration(
                color: Color(0xff022e5f),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(width: 1, color: Colors.grey),
                // shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nombre: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("Ignacio Porras Ibáñez",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Correo: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("ignacioporras93@gmail.com",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Titulo: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white)),
                      Text("Desarrollo de Aplicaciones Multiplataforma",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: new BoxDecoration(
                color: Color(0xff022e5f),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(width: 1, color: Colors.grey),
                // shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nombre: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("Paula Fornier Romero",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Correo: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text("Paulafornier@hotmail.com",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Titulo: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white)),
                      Text(
                          "Ingenieria de Diseño Industrial y Desarrollo del Producto",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
