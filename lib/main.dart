import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nnvcoders/screens/HomePage.dart';

void main(){
  runApp(firstApp());
}


class firstApp extends StatelessWidget {
  const firstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NNV Coders',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}