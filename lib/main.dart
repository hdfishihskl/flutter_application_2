import 'package:flutter/material.dart';
import 'package:flutter_application_2/sreen_page/button.dart';
import 'package:flutter_application_2/sreen_page/main_page.dart';
import 'package:flutter_application_2/stack.dart';
import 'package:flutter_application_2/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const StackWidget (),
    );
  }
}