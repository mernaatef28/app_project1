import 'package:taweret/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taweret/getStart.dart';
import 'package:taweret/onbording_screen.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<MyLoginPage> {
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  _heder(context) {
    return Column(
      children: [
        const Text(
          "Welcome Back",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/login6.svg",
          width: 400,
          height: 350,
        ),
        const Text(
          "Enter your data to Login",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  _inputs(context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // Email Text Field
          child: TextField(
              decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: const Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            fillColor: kPrimaryColor.withAlpha(50),
            filled: true,
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        //  Password Text Field
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        // btn
        MaterialButton(
          // btn on pressed
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
          },
          color: kPrimaryColor,
          padding: const EdgeInsets.only(top: 10, bottom: 10, right: 95, left: 95),
          height: 30,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  _haveAccount(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        // on press send u to sign up page
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySignupPage()));
            },
            child: const Text(
              "SIGN UP",
              style: TextStyle(fontSize: 20, color: kPrimaryColor, fontWeight: FontWeight.w600),
            )),
      ],
    );
  }
}
