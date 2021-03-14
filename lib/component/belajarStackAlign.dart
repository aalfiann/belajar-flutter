import 'package:flutter/material.dart';

class BelajarStackAlign extends StatelessWidget {
  final List<Widget> teks = [];

  BelajarStackAlign() {
    for (var i = 0; i < 20; i++) {
      teks.add(Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Ini adalah text yang berada pada lapisan tengah stack.',
              style: TextStyle(fontSize: 35),
            ),
          )
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack Align'),
        ),
        body: Stack(
          children: <Widget>[
            // Background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            // Text
            ListView(
              children: teks,
            ),
            // Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black,
                margin: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.blue,
                    padding: EdgeInsets.all(20)),
                  child: Text(
                    'Close',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ));
  }
}
