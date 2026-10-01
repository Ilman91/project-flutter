import 'package:flutter/material.dart';
import 'package:flutter1/size_expanded_stack/LatihanTiga.dart';
import 'package:flutter1/size_expanded_stack/StackWidget.dart';
import 'package:flutter1/size_expanded_stack/LayoutDua.dart';
import 'package:flutter1/size_expanded_stack/LayoutEmpat.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: const Color.fromARGB(255, 150, 148, 140),
        centerTitle: true,
       ),
       body: ProfileWidget(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text("Hello Flutter", style: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.bold,
       color: Colors.cyan,
      ),
     ),
    );
  }
}