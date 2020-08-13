import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wesite/landingpage.dart';
import 'package:wesite/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
       fontFamily: "ValidityScript"

       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
              colors: [Color.fromRGBO(195, 20, 50, 1.0),Color.fromRGBO(36,11, 54,1.0)]
                 
            )
          ),
          child: Column(
            children:<Widget> [NavBar(),Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
              child: LandingPage(),
            )],
          ),
        )


      );
  }
}
