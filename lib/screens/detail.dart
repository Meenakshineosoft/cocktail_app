

import 'dart:convert';

import 'package:cocktail_app/screens/ingredients.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
 const Detail({Key? key}) : super(key: key);

 @override
 _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {



  late var response;

  Future<List<dynamic>> fetchDetails() async {
    var result =
    await http.get(Uri.parse(
        "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"));
    return jsonDecode(result.body)['drinks'];
  }

  @override
  void initState() {
    response = fetchDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
           Container(
            child: detailsWidget(),
            color: Colors.black,
           ),
    );
  }

  detailsWidget() {
        return FutureBuilder(
            future: response,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    primary: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        crossAxisCount: 2),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                            Stack(
                             children: [
                               InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ingredients()));
                                },
                                child: Container(
                                  width: 200,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: NetworkImage(snapshot.data[index]['strDrinkThumb']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                child: Column(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 140.0)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Icon(Icons.favorite_border_outlined),
                                    Text(snapshot.data[index]['idDrink'],style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11),),
                                  ],
                                  ),


                                  ],

                                  ),

                        ),
                      ),

                               Container(
                                 padding: EdgeInsets.only(top: 170.0),
                                   child: Text(snapshot.data[index]['strDrink'],style:  TextStyle(color: Colors.white70, fontWeight: FontWeight.normal, fontSize: 21),)),



                      ],

                      );


                    }

                );
              }
              else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }

    );

  }


}










