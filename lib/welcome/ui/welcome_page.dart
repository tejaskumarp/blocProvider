import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child:
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                "T2",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                  icon: const Icon(Icons.more_vert), onPressed: () {}),
            ),
          ],
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.black,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text(
            'COSYS',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Image.asset('assets/images/aat_building2.jpg'),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        drawer: SizedBox(
            child: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                children: [
                  SizedBox(
                    height: 165,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "COSYS",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Text(
                                      "COSYS",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(left: 172),
                                    child: Image.asset(
                                      'assets/images/ngc_app_icon.png',
                                      height: 30,
                                      width: 30,
                                    )),
                              ],
                            ),
                            const Text(
                              "10.1.7",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Text(
                                      "AAT T2",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(left: 160),
                                        child: IconButton(
                                            icon: const Icon(Icons.logout),
                                            onPressed: () {})),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 160),
                                        child: Text(
                                          "Logout",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  const ExpansionTile(
                    iconColor: Colors.indigo,
                    title: Text(
                      "AWB MANAGEMENT ",
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Shipment Location",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Move AWB Storage to ULD",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Capture Damage",
                          textAlign: TextAlign.start,
                        ),
                      ),

                    ],
                  ),
                  const ExpansionTile(
                    iconColor: Colors.indigo,
                    title: Text(
                      "IMPORT",
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Inbound Breakdown",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const ExpansionTile(
                    iconColor: Colors.indigo,
                    title: Text(
                      "Export",
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Assign ULD Trolley",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Load Shipment by AWB",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const ExpansionTile(
                    iconColor: Colors.indigo,
                    title: Text(
                      "Warehouse",
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Warehouse Inventory Check",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "eLogBook Check-in/Check-out",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));;
  }
}
