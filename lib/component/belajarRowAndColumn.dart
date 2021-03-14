import 'package:flutter/material.dart';

class BelajarRowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Row dan Column')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Text 1'),
          Text('Text 2'),
          Text('Text 3'),
          Row(
            children: <Widget>[
              Text('Text 4'),
              Text('Text 5'),
              Text('Text 6'),
            ],
          )          
        ],
      )
    );
  }
}