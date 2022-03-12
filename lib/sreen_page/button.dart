import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.favorite,color: (Colors.red),),
        title: const Text('Button'),
        actions: const [
           Icon(Icons.search)
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint('Button press');
              },
              child: const Text('Buttion Press'),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  debugPrint('Button press');
                },
                icon: const Icon(Icons.add),
                label: const Text('Button Icon'),
                ),
                TextButton(
                  onPressed: () {},
                 child: const Text('Text button'),
                ),
                TextButton.icon(
                  onPressed: () {},
                 icon: const Icon(Icons.remove), 
                 label: const Text('Text Icon Button'),
                 ),
                 OutlinedButton(
                   onPressed: () {},
                    child: const Text('Outlinebutton'),
                    ),
                    CupertinoButton(
                      child: const Text('CupertinoButton'), 
                      onPressed: (){},
                      )
          ],
        ),
      ),
    );
  }
}
