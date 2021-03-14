import 'package:flutter/material.dart';

class BelajarListAndListView extends StatefulWidget {
  @override
  _BelajarListAndListViewState createState() => _BelajarListAndListViewState();
}

class _BelajarListAndListViewState extends State<BelajarListAndListView> {
  List<Widget> widgets = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List and ListView'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        counter++;
                        setState(() {
                          widgets.add(Text('Data ke-' + counter.toString(), style: TextStyle(fontSize: 35)));
                        });
                      },
                      child: Text('Tambah Data'),
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)))),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text('Hapus Data'),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ));
  }
}
