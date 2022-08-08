import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
     routes: {
       HomeScreen.routeName :(context)=>HomeScreen(),
     },
      initialRoute: HomeScreen.routeName,
    );
  }
}


