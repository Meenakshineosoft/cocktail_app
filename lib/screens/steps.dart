import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Steps extends StatefulWidget{

  _StepsState createState() => _StepsState();

}

class _StepsState extends State<Steps> {
  late var response;

  Future<List<dynamic>> fetchSteps() async {
    var result =
    await http.get(Uri.parse(
        "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=15346"));
    return jsonDecode(result.body)['drinks'];
  }

  @override
  void initState() {
    response = fetchSteps();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: stepsWidget(),
        color: Colors.black,
      ),
    );
  }

  stepsWidget() {
    return FutureBuilder(
        future: response,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {
        return
         // Column(
         // children: [

          ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) {
          return
            Stack(

          children: [
            Column(
          children: [
            Image.network(snapshot.data[index]['strDrinkThumb']),
             Padding(padding: EdgeInsets.all(10.0)),
             Text('Steps', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),),
            Padding(padding: EdgeInsets.all(10.0)),
                Text( '01 ' + (snapshot.data[index]['strInstructions']),style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text( '02 ' + (snapshot.data[index]['strInstructionsDE']),style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text( '03 ' + (snapshot.data[index]['strInstructionsIT']),style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),

              ],

            )
           ],

          );
          },
          );

          } else {
          return Center(
          child: CircularProgressIndicator(),
          );
          }
        },
    );
  }

      }







