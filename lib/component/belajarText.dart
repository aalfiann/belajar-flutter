import 'package:flutter/material.dart';

class BelajarText extends StatelessWidget {
  final mainBody = Center(
    child: Container(
      color: Colors.lightBlue, 
      width: 150, 
      height: 100, 
      child: Text(
        'Saya sedang melatih kemampuan flutter saya!',
        style: TextStyle(
          color: Colors.white, 
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
          fontSize: 20
        ),
      )
    )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar')
      ),
      body: mainBody
    );
  }
}