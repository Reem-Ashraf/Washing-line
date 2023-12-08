import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/view/screens/lay%20out/lay_out_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder:(context, orientation, deviceType){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: 'jannah'
        ),
        home:const LayOUt()
      );}
    );
  }
}

