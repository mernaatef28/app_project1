import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taweret/constants.dart';
import 'package:taweret/questions.dart';

class MyGetStartPage extends StatelessWidget {
  MyGetStartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 113, 118, 255),
      backgroundColor: kBackgroundColor2,
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 113, 118, 255),
      //   elevation: 0,
      // ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: SvgPicture.asset("assets/15.svg"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Your love and care are the greatest gifts you can give your baby.",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 24, 46),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Container(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
                            //====================================== result page
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => MyQuestionsPage()));
                            },
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 113, 118, 255),
                              ),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
