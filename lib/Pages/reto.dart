import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Reto extends StatefulWidget {
  Reto({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _RetoState createState() => _RetoState();
}

class _RetoState extends State<Reto> {
  DateTime _selectedDate;
  int dias_completados = 0;
  List<String> retos = [
    "Lavarse los dientes cerrando el grifo cuando no sea necesario",
    "Poner un cubo fuera para aprovechar el agua de lluvia para regar las plantas o fregar el suelo",
    "Poner un cubo en la ducha hasta que el agua este caliente",
    "Lavarse las manos cerrando el grifo cuando no sea necesario",
    "Lavar las frutas y verduras en un recipiente y no con el grifo abierto directamente"
  ];
  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // color: Color(0xff022e5f),
                    border: Border.all(width: 2, color: Color(0xff022e5f)),
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
                  child: Center(
                    child: Image.asset(
                      "assets/images/imagen" +
                          (dias_completados + 1).toString() +
                          ".png",
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  // height: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff022e5f),
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
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Center(
                            child: Column(
                          children: [
                            Text(
                              "Reto 21 Días",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 21),
                            ),
                            Text(
                              "Save the water",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        )),
                      ),
                      Container(
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff97ba3c),
                            // color: Color(0xff022e5f),
                            border:
                                Border.all(width: 2, color: Color(0xff022e5f)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 5,
                            //     blurRadius: 7,
                            //     offset:
                            //         Offset(0, 3), // changes position of shadow
                            //   ),
                            // ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    dias_completados.toString(),
                                    style: TextStyle(
                                        color: Color(0xff022e5f), fontSize: 28),
                                  ),
                                  Text(
                                    " Día",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                              Text(
                                "Completado",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )),
        Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // height: 80,
            decoration: BoxDecoration(
              color: Color(0xff022e5f),
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
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Calendario',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.tealAccent[100]),
                    ),
                  ),
                  CalendarTimeline(
                    showYears: true,
                    initialDate: _selectedDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                    onDateSelected: (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                    leftMargin: 20,
                    monthColor: Colors.white70,
                    dayColor: Colors.teal[200],
                    dayNameColor: Color(0xFF333A47),
                    activeDayColor: Colors.white,
                    activeBackgroundDayColor: Color(0xff97ba3c),
                    dotsColor: Color(0xFF333A47),
                    selectableDayPredicate: (date) => date.day != 23,
                    locale: 'es',
                  ),
                  SizedBox(height: 20),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 16),
                  //   child: TextButton(
                  //     style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all(Colors.teal[200])),
                  //     child: Text('RESET',
                  //         style: TextStyle(color: Color(0xFF333A47))),
                  //     onPressed: () => setState(() => _resetSelectedDate()),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                        width: double.infinity,
                        height: 100,
                        margin:
                            EdgeInsets.only(bottom: 15, right: 15, left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Color(0xff022e5f),
                          border:
                              Border.all(width: 2, color: Color(0xff022e5f)),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //     offset:
                          //         Offset(0, 3), // changes position of shadow
                          //   ),
                          // ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(retos[dias_completados],
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 40,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xff97ba3c),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Text("Marcar como Completado"),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedDate = _selectedDate
                                        .add(const Duration(days: 1));
                                    if (dias_completados < 4) {
                                      dias_completados = dias_completados + 1;
                                    } else {
                                      dias_completados = 0;
                                    }
                                  });
                                })
                          ],
                        )),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
