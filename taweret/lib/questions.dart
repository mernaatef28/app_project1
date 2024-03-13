// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taweret/MyButtons.dart';
import 'package:taweret/MyDrawer.dart';
import 'package:taweret/constants.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/result.dart';
import 'package:taweret/componants/medical-api.dart';
import 'dart:convert' as convert;

class MyQuestionsPage extends StatefulWidget {
  const MyQuestionsPage({super.key});

  @override
  State<MyQuestionsPage> createState() => _MyQuestionsPageState();
}

class _MyQuestionsPageState extends State<MyQuestionsPage> {
  GlobalKey<FormState> formState = GlobalKey();

//////////////////////////////////////////////
  int currentQuestionIndex = 0;
  late List<String> questions;
  late List<bool?> answervalues;
  // Map sort the result of each question in the runtime
  Map< String, bool?> answers = {}; 
  // List for Questions
 
  
  
 @override
  void initState() {
    super.initState();
     questions = [
    "fever",
    "cough" ,
    "runny_nose" ,
    "sore_throat",
    "fatigue",
    "body_aches",
    "rash",
    "itchiness",
    "swollen_glands",
    "vomiting",
    "diarrhea",
    "abdominal_pain",
    "wheezing",
    "difficulty_breathing",
    "ear_pain",
    "difficulty_sleeping",
    "sneezing",
    "itchy_eyes",
    "high_fever",
    "blisters",
    "excessive_thirst",
    "frequent_urination",
    "unexplained_weight_loss",
    "facial_pain",
    "headache",
    "nasal_congestion",
    "dehydration",

  ];
    answervalues = List.filled(questions.length, null); // Initialize answervalues with the same length as questions
  }
     
//



// go to newt quest and stop at quset number questions.length - 1
      void goToNextQuestion() {
        setState(() {
          if (currentQuestionIndex < questions.length - 1) {
            currentQuestionIndex += 1;
          }
          else {
          showanswer(); // Call showanswer() when the last question is reached
          }
        });
      }
Map<String, bool?> combineListsIntoMap(List<String> keys, List<bool?> values) {
  Map<String, bool?> resultMap = {};
  for (int i = 0; i < keys.length; i++) {
    resultMap[keys[i]] = values[i];
  }
  return resultMap;
}
// the numbers that linked with the questions
      void goToQuestion(int index) {
        setState(() {
          currentQuestionIndex = index;

        });
      }
// {index : answer}
  void showanswer ()async{
    // setState(()async {
      if (currentQuestionIndex == questions.length - 1) {
         answers = combineListsIntoMap(questions, answervalues);
        print('User Answers: $answers');
        // Call the api function and handle the result
        var resultresponse = await api(convert.jsonEncode(answers));
          print('API Response: $resultresponse');
          // ignore: use_build_context_synchronously
          Navigator.push(context, MaterialPageRoute(builder: (context) => result(resultresponse)));
      
          // You can handle the API response here
        
         }
         else{
          print("==== no answer is here " );
         }

      }
//////////////////////////////////////

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 35,
          ),
          floatingActionButton: const MyHomeButton(),
          drawer: MyDrawer(),
          body: Container(
            child: ListView(
              children: [
                _slideShow(context),
                __welecome(context),
                const SizedBox(
                  height: 25,
                ),
                _questList(context)
              ],
            ),
          ),
        );
      }

      _slideShow(context) {
        return Container(
          child: ImageSlideshow(
            width: double.infinity,
            initialPage: 0,
            height: 220,
            indicatorColor: Colors.blue[400],
            indicatorBackgroundColor: Colors.grey,
            indicatorBottomPadding: 0,
            onPageChanged: (value) {
              print('Page changed: $value');
            },
            autoPlayInterval: 8000,
            isLoop: true,
            children: [
              SvgPicture.asset(
                "assets/quize3.svg",
                height: 250,
                width: 220,
              ),
              SvgPicture.asset(
                "assets/quize2.svg",
                height: 250,
                width: 220,
              ),
              SvgPicture.asset(
                "assets/quize1.svg",
                height: 250,
                width: 220,
              ),
            ],
          ),
        );
      }

      __welecome(context) {
        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Let's Go",
                style: TextStyle(fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text("Answer this Questions please",
                  style: TextStyle(fontSize: 18)),
            )
          ],
        );
      }

      _questList(context) {
        return Column(children: [
          // Numerical List ---->>>
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    questions.length,
                        (index) =>
                        Padding(
                          // space between each btn
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 3.0),
                          // btn
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            height: 40,
                            minWidth: 50,
                            color: kPrimaryColor4,
                            /////// on press -->>>
                            onPressed: () => goToQuestion(index),
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                  ),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          ////// Questions--->
          Card(
            margin: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            shadowColor: const Color.fromARGB(255, 239, 210, 255),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                // color: kPrimaryColor.withAlpha(40),
                color: kBackgroundColor2.withAlpha(300),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /////// Q n --->>>
                  Text(
                    "Q${currentQuestionIndex +
                        1}- ${questions[currentQuestionIndex]}",
                    style: GoogleFonts.agbalumo(fontSize: 21.0),
                  ),
                  const SizedBox(height: 20.0),

                  /// Radio btns
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<bool>(
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: true,
                        groupValue: answervalues[currentQuestionIndex],
                        onChanged: (value) {
                          setState(() {
                            answervalues[currentQuestionIndex] = value!;
                          });
                        },
                      ),
                      const Text(
                        'Yes             ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Radio<bool>(
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: false ,
                        groupValue: answervalues[currentQuestionIndex],
                        onChanged: (value) {
                          setState(() {
                            answervalues[currentQuestionIndex] = value!;
                          });
                        },
                      ),
                      const Text(
                        'No',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  // show the answer on the terminal

                  const SizedBox(height: 35.0),
                  Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: goToNextQuestion,
                        child: const Text('Next'),
                      )),
                ],
              ),
            ),
          )
        ]);
      }
    }





