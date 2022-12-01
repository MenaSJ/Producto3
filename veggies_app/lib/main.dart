import 'package:flutter/material.dart';
import 'package:veggies_app/pages/food/popular_food_detail.dart';
import 'package:veggies_app/pages/food/recommended_food_detail.dart';
import 'package:veggies_app/pages/home/Home_body.dart';
import 'package:veggies_app/pages/home/home.dart';
import 'package:veggies_app/pages/inicio.dart';
import 'package:veggies_app/pages/perfil.dart';

import 'pages/Recibe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: inicio(),
      //initialRoute: "/inicio",
      routes: {
        "/inicio": (context) => inicio(),
        "/recibe": (context) => recibe(),
        "/profile": (context) => profile(),
        "/Home_body": (context) => PaginaPrincipal(),
        "/popular":(context) => PopularFoodDetail(),
        "/recommend":(context) => FoodDetail(),
      },
    );
  }
}
