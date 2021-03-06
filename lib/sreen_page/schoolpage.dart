import 'package:flutter/material.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'School Page',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}