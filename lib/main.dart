import 'package:flutter/material.dart';
import 'component/belajarPageLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BelajarPageLogin(),
    );
  }
}
