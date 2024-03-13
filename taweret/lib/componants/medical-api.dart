// ignore: file_names
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

// var apiKey = '';
// var date = '';
var headers = {
  // 'x-access-token': apiKey,
  'Content-Type': 'application/json'
};

api(data) async {
  var url = Uri.https('medical-es-api.vercel.app', '/api');
  var response = await http.post(url, headers: headers, body: data);
  var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
  if (jsonResponse[0]['name']=='Common Cold'){return 0 ;}
 else if (jsonResponse[0]['name']=='Flu'){return 1 ;}
 else if (jsonResponse[0]['name']=='Chickenpox'){return 2 ;}
 else if (jsonResponse[0]['name']=='Strep Throat'){return 3 ;}
 else if (jsonResponse[0]['name']=='Gastroenteritis'){return 4 ;}
 else if (jsonResponse[0]['name']=='Asthma'){return 5 ;}
 else if (jsonResponse[0]['name']=='Ear Infection'){return 6 ;}
 else if (jsonResponse[0]['name']=='Allergies'){return 7 ;}
 else if (jsonResponse[0]['name']=='Measles'){return 8 ;}
 else if (jsonResponse[0]['name']=='Hand, Foot, and Mouth Disease'){return 9 ;}
 else if (jsonResponse[0]['name']=='Diabetes'){return 10 ;}
 else if (jsonResponse[0]['name']=='Paranasal Sinusitis'){return 11 ;}
 else if (jsonResponse[0]['name']=='Diarrheal Diseases'){return 12 ;}
 else {return -1 ; }

}

