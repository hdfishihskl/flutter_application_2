import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Stackwidget'),
        centerTitle: true,
        actions: [
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                const Icon(Icons.notifications, size: 30.0),
                Container(
                  height: 15.0,
                  width: 15.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                  child: const Text('2'),
                ),
                const SizedBox(width: 20),
              ],
            ),
          )
        ],
        ),
         body: Center(
           child: Stack(
             children: [
               
             ],

           )),
    );
  }
}