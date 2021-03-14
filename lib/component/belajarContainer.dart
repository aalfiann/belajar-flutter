import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Container'),
      ),
      body: Container(
        color: Colors.red,
        margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
        padding: EdgeInsets.only(bottom: 30, top: 30),
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.amber, Colors.blue])),
        ),
      ),
    );
  }
}
