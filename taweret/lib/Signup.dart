import 'package:taweret/Login.dart';
import 'package:taweret/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySignupPage extends StatefulWidget {
  const MySignupPage({super.key});

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            _heder(context),
            const SizedBox(
              height: 20,
            ),
            _inputs(context),
            const SizedBox(
              height: 20,
            ),
            _haveAccount(context),
          ],
        ),
      ),
    );
  }

  _heder(context) {
    return Column(
      children: [
        const Text(
          "Sign up",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SvgPicture.asset("assets/login.svg"),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Create new account",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  _inputs(context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // Username tect field
          child: TextField(
              decoration: InputDecoration(
            hintText: "Username",
            prefixIcon: const Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            fillColor: kPrimaryColor.withAlpha(50),
            filled: true,
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        // Email text field
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: const Icon(
                  Icons.email,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        // Password Text Field
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
              decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: const Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            fillColor: kPrimaryColor.withAlpha(50),
            filled: true,
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        // btn on pressed
        MaterialButton(
          onPressed: () {},
          color: kPrimaryColor,
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 90, left: 90),
          height: 30,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          child: const Text(
            "Sign UP",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _haveAccount(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account? ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        // btn on press send u to login page
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
            },
            child: const Text("Login", style: TextStyle(fontSize: 20, color: kPrimaryColor))),
      ],
    );
  }
}
