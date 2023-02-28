

import 'package:cocktail_app/screens/detail.dart';
import 'package:cocktail_app/screens/home.dart';
import 'package:cocktail_app/screens/ingredients.dart';
import 'package:cocktail_app/screens/steps.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
            debugShowCheckedModeBanner: false,
              home: Home(),
            initialRoute: "/",
            routes: {

          "/first": (final context) => Detail(),

          "/second": (final context) => Ingredients(),
              "/third": (final context) => Steps(),


        },

    );
  }
}

