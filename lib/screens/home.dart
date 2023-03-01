
import 'package:carousel_slider/carousel_slider.dart';

import 'package:cocktail_app/screens/detail.dart';


import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home extends StatefulWidget {

  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            color: Colors.black,
            child:
              Column(
                children: [
                  buildSlider(context),
                  buildCategories(context),
                  buildCategorySlider(context),

                ],
              )

          ),
        );

  }
}

   buildSlider(BuildContext context) {
     return ImageSlideshow(
       indicatorColor: Colors.white,
       indicatorBackgroundColor: Colors.grey,
       height: 400,

       onPageChanged: (value) {
         debugPrint('Page changed: $value');
       },
       autoPlayInterval: 5000,
       isLoop: true,
       children: [
         SingleChildScrollView(
           child: Stack(
             children: [
               Image.network(
                     "https://www.thecocktaildb.com/images/media/drink/uwstrx1472406058.jpg"),
               Icon(Icons.cancel_rounded, color: Colors.black),
               Container(
                 padding: EdgeInsets.only(top: 50, left: 20),
                 child:
                 Text(' Featured Recipes', style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 15),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, left: 20),
                 child:
                 Text(' Harvey \n Wallbanger', style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 25),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 140, left: 30),
                 child: Row(
                   children: [
                     Icon(Icons.keyboard_control_outlined, color: Colors.white,),
                     Text('Strong', style: TextStyle(
                         color: Colors.white70,
                         fontWeight: FontWeight.normal,
                         fontSize: 14
                     ),),
                     Icon(Icons.favorite, color: Colors.white),
                     Text('865', style: TextStyle(color: Colors.white70, fontSize: 14 ),)
                   ],
                 ),
               ),
             ],
           ),
         ),

         SingleChildScrollView(
           child: Stack(
             children: [
               Image.network(
                   "https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg"),
               Icon(Icons.cancel_rounded, color: Colors.black),
               Container(
                 padding: EdgeInsets.only(top: 50, left: 20),
                 child:
                 Text(' Featured Recipes', style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 17),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, left: 20),
                 child:
                 Text(' Dry \n Martini', style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 25),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 140, left: 30),
                 child: Row(
                   children: [
                     Icon(Icons.keyboard_control_outlined, color: Colors.white,),
                     Text('Medium', style: TextStyle(
                         color: Colors.white70,
                         fontWeight: FontWeight.normal,
                         fontSize: 14
                     ),),
                     Icon(Icons.favorite, color: Colors.white),
                     Text('700', style: TextStyle(color: Colors.white70, fontSize: 14 ),)
                   ],
                 ),
               ),
             ],
           ),
         ),
         SingleChildScrollView(
           child: Stack(
             children: [
               Image.network(
                   "https://www.thecocktaildb.com/images/media/drink/acvf171561574403.jpg"),
               Icon(Icons.cancel_rounded, color: Colors.black),
               Container(
                 padding: EdgeInsets.only(top: 50, left: 20),
                 child:
                 Text(' Featured Recipes', style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 17),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, left: 20),
                 child:
                 Text(' Espresso\n Rumtini', style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 25),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 140, left: 30),
                 child: Row(
                   children: [
                     Icon(Icons.keyboard_control_outlined, color: Colors.white,),
                     Text('Strong', style: TextStyle(
                         color: Colors.white70,
                         fontWeight: FontWeight.normal,
                         fontSize: 14
                     ),),
                     Icon(Icons.favorite, color: Colors.white),
                     Text('968', style: TextStyle(color: Colors.white70, fontSize: 14 ),)
                   ],
                 ),
               ),
             ],
           ),
         ),
         SingleChildScrollView(
           child: Stack(
             children: [
               Image.network(
                   "https://www.thecocktaildb.com/images/media/drink/clth721504373134.jpg"),
               Icon(Icons.cancel_rounded, color: Colors.black),
               Container(
                 padding: EdgeInsets.only(top: 50, left: 20),
                 child:
                 Text(' Featured Recipes', style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 17),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, left: 20),
                 child:
                 Text(' French \n Martini', style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 25),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 140, left: 30),
                 child: Row(
                   children: [
                     Icon(Icons.keyboard_control_outlined, color: Colors.white,),
                     Text('Strong', style: TextStyle(
                         color: Colors.white70,
                         fontWeight: FontWeight.normal,
                         fontSize: 14
                     ),),
                     Icon(Icons.favorite, color: Colors.white),
                     Text('876', style: TextStyle(color: Colors.white70, fontSize: 14 ),)
                   ],
                 ),
               ),
             ],
           ),
         ),
         SingleChildScrollView(
           child: Stack(
             children: [
               Image.network(
                   "https://www.thecocktaildb.com/images/media/drink/b4cadp1619695347.jpg"),
               Icon(Icons.cancel_rounded, color: Colors.black),
               Container(
                 padding: EdgeInsets.only(top: 50, left: 20),
                 child:
                 Text(' Featured Recipes', style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 17),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, left: 20),
                 child:
                 Text(' Frosé', style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.normal,
                     fontSize: 25),),
               ),
               Container(
                 padding: EdgeInsets.only(top: 140, left: 30),
                 child: Row(
                   children: [
                     Icon(Icons.keyboard_control_outlined, color: Colors.white,),
                     Text('Medium', style: TextStyle(
                         color: Colors.white70,
                         fontWeight: FontWeight.normal,
                         fontSize: 14
                     ),),
                     Icon(Icons.favorite, color: Colors.white),
                     Text('975', style: TextStyle(color: Colors.white70, fontSize: 14 ),)
                   ],
                 ),
               ),
             ],
           ),
         ),
       ],
     );
   }

   buildCategories(BuildContext context) {
     return  Container(
       color: Colors.black87,
       padding: EdgeInsets.all(20.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text('Categories', style: TextStyle(
               color: Colors.white,
               fontSize: 23,
               fontWeight: FontWeight.bold
           ),

           ),
           Text('View All', style: TextStyle(
             color: Colors.grey,
             fontSize: 14,
           ),
             textAlign: TextAlign.end,
           ),

         ],
       ),
     );
   }




buildCategorySlider(BuildContext context) {
       return CarouselSlider(
          items: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/ib0b7g1504818925.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Ordinary Drink', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),



            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/xvwusr1472669302.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Cocktail',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),


            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/rptuxy1472669372.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Shake',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),


            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/ruxuvp1472669600.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Other / Unknown',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/trpxxs1472669662.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Cocoa',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/trpxxs1472669662.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Shot',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Coffee / Tea',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https:\/\/www.thecocktaildb.com\/images\/media\/drink\/trpxxs1472669662.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Homemade Liquor',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/yvxrwv1472669728.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Punch / Coffee Drink',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Beer',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23)),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail()));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/vfeumw1504819077.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Soft Drink',style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23, )),
              ),
            ),

          ],


          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 11 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
        );


   }










