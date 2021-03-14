import 'dart:math';
import 'package:flutter/material.dart';

class BelajarAnimatedContainer extends StatefulWidget {
  @override
  _BelajarAnimatedContainerState createState() =>
      _BelajarAnimatedContainerState();
}

class _BelajarAnimatedContainerState extends State<BelajarAnimatedContainer> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              //
            });
          },
          child: Center(
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),
              duration: Duration(seconds: 1),
              height: 50.0 + random.nextInt(150),
              width: 50.0 + random.nextInt(150),
            ),
          ),
        ));
  }
}
