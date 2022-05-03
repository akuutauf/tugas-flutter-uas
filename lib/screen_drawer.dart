import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen_login.dart';
import 'screen_home.dart';
import 'screen_history.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  // variables for color
  Color primaryGreen = Color.fromARGB(255, 51, 204, 204);
  Color primaryGreenHover = Color.fromARGB(255, 111, 223, 223);
  Color primarySweetRed = Color.fromARGB(255, 255, 101, 132);
  Color greyCustom = Color.fromARGB(255, 146, 169, 189);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              }),
          _drawerItem(
              icon: Icons.history,
              text: 'History',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HistoryScreen();
                }));
              }),
          _drawerItem(
              icon: Icons.logout,
              text: 'Logout',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              })
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("assets/icons/avatar_male.png"),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Container(
        child: Text("Thomas Edison",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
      ),
      accountEmail: Text("College Student",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          )),
      decoration: BoxDecoration(
        color: primaryGreen,
      ),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: greyCustom),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: GoogleFonts.lato(
                color: greyCustom,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
