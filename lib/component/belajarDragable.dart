import 'package:flutter/material.dart';

class BelajarDragable extends StatefulWidget {
  @override
  _BelajarDragableState createState() => _BelajarDragableState();
}

class _BelajarDragableState extends State<BelajarDragable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dragable'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              width: 50,
              height: 50,
              child: Material(color: Colors.amber),
            )
          ],
        ));
  }
}
