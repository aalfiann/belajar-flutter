import 'package:flutter/material.dart';

class BelajarStateful extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BelajarStateful> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Belajar Stateful'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  number.toString(),
                  style: TextStyle(fontSize: 10 + number.toDouble()),
                ),
              ),
              ElevatedButton(
                  onPressed: tekanTombol, child: Text('Tambah Bilangan'))
            ],
          ),
        ));
  }
}
