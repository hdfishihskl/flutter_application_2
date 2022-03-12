import 'package:flutter/material.dart';

class listWidget extends StatelessWidget {
  const listWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWidget'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, idex){
          return ListView(

          );
        },
         separatorBuilder: (context, idex){
           // ignore: prefer_const_constructors
           return Divider(
             color: Colors.red,
           );
         },
          itemCount: 20,
        ),
    );
  }
}