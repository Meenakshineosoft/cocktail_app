import 'package:cocktail_app/screens/steps.dart';
import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     Container(
       color: Colors.black,
       child:
       Column(
         children: [
           SizedBox(
             child: Stack(
               children: [
                 Image.network("https://www.thecocktaildb.com/images/media/drink/wfqmgm1630406820.jpg"),
                 Icon(Icons.cancel_rounded, color: Colors.black,),
                Container(
                  padding: EdgeInsets.only(top: 250, left: 20),
                  child:
                    Text('Passionfruit \n Mojito',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
                  ),
       ],
    ),
           ),

           Row(
           crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(padding: EdgeInsets.only(left: 30.0)),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 30.0)),

              Text('Ingredients',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 23)),
          Padding(padding: EdgeInsets.only(bottom: 30.0)),
           Text('Alcohol:',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('2 oz white rum',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('3 Mint leaves',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
          Padding(padding: EdgeInsets.only(bottom: 30.0)),
          Text('Juice',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('2/4 oz Fresh lime juice',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('1/4 oz Passion fruit juice',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('1/2 oz Simple syrup',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Text('Club Soda',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11)),
        ],
      ),
         Container(
           padding: EdgeInsets.only(left: 60.0),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Padding(padding: EdgeInsets.only(bottom: 90.0)),
                 Text('Garnish:',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14), textAlign: TextAlign.start,),
                 Padding(padding: EdgeInsets.only(bottom: 10.0)),
                 Text('Mint Spring',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11), textAlign: TextAlign.start,),
                 Padding(padding: EdgeInsets.only(bottom: 10.0)),
                 Text('Lime Wheel',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11), textAlign: TextAlign.start,),
                 Padding(padding: EdgeInsets.only(bottom: 10.0)),
                 Text('Passion Fruit',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11), textAlign: TextAlign.start,),

              ]
      ),
    ),

             ],
            // child:

           ),

           Container(
             padding: EdgeInsets.only(top: 20.0),
             width: 200,
             child: ElevatedButton(
               child: Text("Start Mixing"),
               onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => Steps()));
               },
               style: ElevatedButton.styleFrom(
                 primary: Color(0xFFFFA000),
                 onPrimary: Colors.white,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(32.0),
                 ),
               ),
             ),
           )
    ]
    ),
     ),
    );
  }
}













