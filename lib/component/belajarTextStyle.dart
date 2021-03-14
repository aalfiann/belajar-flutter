import 'package:flutter/material.dart';

class BelajarTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar TextStyle'),
      ),
      body: Center(
        child: Text(
          'Ini adalah Text Style',
          style: TextStyle(
            fontFamily: "CrashLandingBB", 
            fontStyle: FontStyle.italic,
            fontSize: 30,
            decoration: TextDecoration.overline,
            decorationColor: Colors.red,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy
          ),
        ),
      )
    );
  }
}
