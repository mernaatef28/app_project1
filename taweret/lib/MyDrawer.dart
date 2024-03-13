import 'package:google_fonts/google_fonts.dart';
import 'package:taweret/Login.dart';
import 'package:taweret/constants.dart';
import 'package:taweret/getStart.dart';
import 'package:taweret/home.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/painting.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:taweret/onbording_screen.dart';
import 'package:taweret/result.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer header
          DrawerHeader(
              decoration: const BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Row(children: [
                Text('Taweret',
                    style: GoogleFonts.acme(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold)),
                Image.asset(
                  "assets/AppLogo1.png",
                  width: 65,
                  height: 65,
                ),
              ])),
          // Home icon and btn
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          // Get Start icon and btn
          ListTile(
            leading: const Icon(Icons.start),
            title: const Text('Get Start'),
            onTap: () {
              // Navigate to settings screen or perform any action
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyGetStartPage()));
            },
          ),
          // Result btn
          // ListTile(
          //   leading: const Icon(Icons.text_snippet),
          //   title: const Text('Results'),
          //   onTap: () {
          //     // Navigate to settings screen or perform any action
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => MyResultPage()));
          //   },
          // ),
          // Contact us icon and btn
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('Contact us'),
            onTap: () {
              // Navigate to about screen or perform any action
              Navigator.pop(context);
            },
          ),
          const Divider(),
          // btn for Logout
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () async {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
