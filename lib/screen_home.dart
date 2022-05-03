import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen_drawer.dart';
import 'screen_scanner.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // variable for getting result data scanner
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
          "Home",
          style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryGreen,
      ),
      drawer: DrawerWidget(),
      body: Stack(
        children: [
          ListView(
            children: [
              Center(
                child: Container(
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
              ),
              Center(
                  child: Container(
                      child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 25,
                      ),
                      child: Image.asset(
                        "assets/icons/avatar_male.png",
                        width: MediaQuery.of(context).size.width * 0.3,
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text('User Profile',
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text('Name : Thomas Edison',
                                      style: GoogleFonts.lato(
                                        color: greyCustom,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                Divider(
                                  color: greyCustom,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Text('Nim : none',
                                        style: GoogleFonts.lato(
                                          color: greyCustom,
                                          fontSize: 16,
                                        ))),
                                Divider(
                                  color: greyCustom,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text('Study Program : none',
                                      style: GoogleFonts.lato(
                                        color: greyCustom,
                                        fontSize: 16,
                                      )),
                                ),
                                Divider(
                                  color: greyCustom,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text('Status : Active',
                                      style: GoogleFonts.lato(
                                        color: greyCustom,
                                        fontSize: 16,
                                      )),
                                ),
                                Divider(
                                  color: greyCustom,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            child: ButtonTheme(
                              minWidth: 100,
                              height: 40,
                              child: RaisedButton(
                                color: primaryGreen,
                                hoverColor: primaryGreenHover,
                                onPressed: () {},
                                child: Text("Edit",
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
                  ),
                ],
              ))),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.center_focus_strong),
        backgroundColor: primaryGreen,
        onPressed: () => _openScanner(context),
      ),
    );
  }

  Future _openScanner(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (c) => ScannerScreen()));
    _result = result.toString();
  }
}
