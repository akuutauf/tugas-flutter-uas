import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen_scanner.dart';
import 'screen_drawer.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // variable for catch data from scanner result
  String _result = "";

  // variables for color
  Color primaryGreen = Color.fromARGB(255, 51, 204, 204);
  Color primaryGreenHover = Color.fromARGB(255, 111, 223, 223);
  Color primarySweetRed = Color.fromARGB(255, 255, 101, 132);
  Color greyCustom = Color.fromARGB(255, 146, 169, 189);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "History",
            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: primaryGreen),
      drawer: DrawerWidget(),
      body: Center(
          child: Container(
              child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('History Abscent',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
                Container(
                  child: ButtonTheme(
                    minWidth: 120,
                    height: 40,
                    child: RaisedButton(
                      color: primaryGreen,
                      hoverColor: primaryGreenHover,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScannerScreen();
                        }));
                      },
                      child: Text("Abscent Now",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text("1",
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                        ),
                        IntrinsicWidth(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Datang",
                                  style: GoogleFonts.lato(
                                    color: primaryGreen,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                              Divider(
                                color: greyCustom,
                                height: 15,
                                thickness: 1,
                              ),
                              Text("2022-03-01 08:00:00 AM")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text("2",
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                        ),
                        IntrinsicWidth(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pulang",
                                  style: GoogleFonts.lato(
                                    color: primarySweetRed,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                              Divider(
                                  color: greyCustom, height: 15, thickness: 1),
                              Text("2022-03-01 01:00:00 PM")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(children: [
              Text(_result != null ? _result : "Data Scanner",
                  style: GoogleFonts.lato(
                    color: primaryGreen,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  )),
            ]),
          ),
        ],
      ))),
    );
  }
}
