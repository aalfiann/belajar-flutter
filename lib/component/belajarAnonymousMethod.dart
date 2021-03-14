import 'package:flutter/material.dart';

class BelajarAnonymousMethod extends StatefulWidget {
  @override
  _BelajarAnonymousMethodState createState() => _BelajarAnonymousMethodState();
}

class _BelajarAnonymousMethodState extends State<BelajarAnonymousMethod> {
  String message = 'Ini adalah text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(bottom: 10), child: Text(message)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = 'Tombol sudah ditekan!';
                    });
                  },
                  child: Text('Tekan Saya'))
            ],
          ),
        ));
  }
}
