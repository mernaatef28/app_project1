
// ignore_for_file: use_super_parameters
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/componants/showdata.dart';

class result extends StatefulWidget {
  // final Map<String, String?> apiresult;
   const result(this.index, {super.key} ) ;
  // List<String> keys = [];
  // List<String> values = [];
  final String name = 'dignosis' ;
  final int index ;
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
 
// @override
//   void initState() {
//      final  String keys = apiresult.keys.first;
//       final String value = apiresult.values.first;// Initialize answervalues with the same length as questions
//   }

}
// ignore: non_constant_identifier_names
class _resultState extends State<result> {
  // List<QueryDocumentSnapshot> data = [];

  // bool isLoading = true;
  // getData()async{
  //   QuerySnapshot querySnapshot =await FirebaseFirestore.instance.collection("Diseases").get() ;
  //   data.addAll(querySnapshot.docs) ;

  //   setState(() { isLoading = false;});
  // }
  // @override
  // void initState ()
  // {
  //    getData();

  //    super.initState();
  //    fetchData();

    
  // }
  
   void getData(int num ){

    if (num == 0 ){
      showdata( field:  "'Common Cold'", data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 1 ){
      showdata( field:  'Flu', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 2 ){
      showdata( field:  'Chickenpox', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 3 ){
      showdata( field:  'Strep Throat', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 4 ){
      showdata( field:  'Gastroenteritis', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 5 ){
      showdata( field:  'Asthma', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 6 ){
      showdata( field:  'Ear Infection', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 7 ){
      showdata( field:  'Allergies', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 8 ){
      showdata( field:  'Measles', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 9 ){
      showdata( field:  'Hand, Foot, and Mouth Disease', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 10 ){
      showdata( field:  'Diabetes', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 11 ){
      showdata( field:  'Paranasal Sinusitis', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == 12 ){
      showdata( field:  'Diarrheal Diseases', data: 'diseasename' );
      showdata( field:  "'Get plenty of rest, stay hydrated, and take over-the-counter cold medication.'", data: 'treatment' );
    }
    else if (num == -1 ){
      print ('out of the range in the server call ') ;
    }
   }
   @override
  void initState ()
  {
     getData(widget.index);

  }
  // Future<void> fetchData() async {
  //   await getData();

  // }
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
               //showdata( field:  "${data[0]['name']}", data: 'diseasename' ),
            //   // showdata( field:  "${data[1]['discribtion']}", data: 'discribtion' ),
              // showdata( field:  "${data[0]['treatment']}", data: 'treatment' ),
            // //    for (var entry in apiresult)
            //       showdata(field: entry.key.toString(), data: entry.value.toString()),

             Text('MARO')],
          ),
        ),
      ]),
    );
  }
}

  
