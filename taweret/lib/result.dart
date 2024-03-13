
// ignore_for_file: use_super_parameters

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/componants/showdata.dart';

class result extends StatefulWidget {
  // final Map<String, String?> apiresult;
   const result({Key? key}) : super(key: key);
  // List<String> keys = [];
  // List<String> values = [];
  final String name = 'dignosis' ;
  
 
// @override
//   void initState() {
//      final  String keys = apiresult.keys.first;
//       final String value = apiresult.values.first;// Initialize answervalues with the same length as questions
//   }
  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  List<QueryDocumentSnapshot> data = [];
  bool isLoading = true;
  getData()async{
    QuerySnapshot querySnapshot =await FirebaseFirestore.instance.collection("diseases").get() ;
    data.addAll(querySnapshot.docs) ;
    setState(() { isLoading = false;});
  }
  @override
  void initState()
  {
     getData();
     super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      // drawer: MyDrawer(),
      body: ListView(children: [
        Container(
          width: 300,
          height: 300,
          child: Image(
            image: AssetImage(
              "assets/resultpic.png",
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                showdata( field:  "${data[0]['diseasename']}", data: 'diseasename' ),
            //   // showdata( field:  "${data[1]['discribtion']}", data: 'discribtion' ),
                showdata( field:  "${data[0]['treatment']}", data: 'treatment' ),
            // //    for (var entry in apiresult)
            //       showdata(field: entry.key.toString(), data: entry.value.toString()),

             ],
          ),
        ),
      ]),
    );
  }
}

