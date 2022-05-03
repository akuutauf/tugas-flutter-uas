import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen_home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // variable for top animation
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getSmall2Diameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 2;
  double getSmall3Diameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 3;

  // variabel control for form
  final _formKey = GlobalKey<FormState>();
  bool passenable = true;

  // variables for color
  Color primaryGreen = Color.fromARGB(255, 51, 204, 204);
  Color primaryGreenHover = Color.fromARGB(255, 111, 223, 223);
  Color primarySweetRed = Color.fromARGB(255, 255, 101, 132);
  Color greyCustom = Color.fromARGB(255, 146, 169, 189);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 1.7,
            top: -getSmallDiameter(context) / 1.7,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryGreen,
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 3.2,
            right: -getSmallDiameter(context) / 1.5,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmall2Diameter(context),
              height: getSmall2Diameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryGreenHover,
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 1.3,
            right: -getSmall3Diameter(context) / 7,
            top: -getSmall3Diameter(context) / 1.5,
            child: Container(
              width: getSmall3Diameter(context),
              height: getSmall3Diameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryGreen,
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.54,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                elevation: 3,
                shadowColor: Colors.grey,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: primaryGreen,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                        ),
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: TextFormField(
                            // decoration
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              label: Text(
                                "username",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: greyCustom, fontSize: 18),
                                ),
                              ),
                              hintText: "thomasedison",
                              hintStyle: GoogleFonts.lato(
                                textStyle:
                                    TextStyle(color: greyCustom, fontSize: 16),
                              ),
                              prefixIcon: Icon(
                                Icons.email,
                                color: greyCustom,
                              ),
                              prefixStyle: TextStyle(
                                  color: primaryGreenHover,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Field is Empty";
                              } else if (value.length < 8) {
                                return "Username less than 8 Characters";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: TextFormField(
                            // decoration
                            decoration: InputDecoration(
                              // icon: Icon(Icons.email),
                              contentPadding: EdgeInsets.all(20),
                              label: Text(
                                "password",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: greyCustom, fontSize: 18),
                                ),
                              ),
                              hintText: "--------",
                              hintStyle: GoogleFonts.lato(
                                textStyle:
                                    TextStyle(color: greyCustom, fontSize: 16),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: greyCustom,
                              ),
                              prefixStyle: TextStyle(
                                  color: Colors.transparent,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              suffixIcon: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (passenable) {
                                        passenable = false;
                                      } else {
                                        passenable = true;
                                      }
                                    });
                                  },
                                  icon: Icon(passenable == false
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Field is Empty";
                              } else if (value.length < 8) {
                                return "Password less than 8 Characters";
                              }
                              return null;
                            },
                            obscureText: passenable,
                            onChanged: (data) {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: RaisedButton(
                            color: primaryGreen,
                            hoverColor: primaryGreenHover,
                            child: Center(
                                child: Text(
                              "LOGIN",
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              )),
                            )),
                            onPressed: () {
                              if (_formKey.currentState!.validate())
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomeScreen();
                                }));
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
