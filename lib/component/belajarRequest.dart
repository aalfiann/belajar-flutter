import 'package:belajar/model/get_result_model.dart';
import 'package:belajar/model/post_result_model.dart';
import 'package:flutter/material.dart';

class BelajarRequest extends StatefulWidget {
  @override
  _BelajarRequestState createState() => _BelajarRequestState();
}

class _BelajarRequestState extends State<BelajarRequest> {
  PostResult postResult;
  GetResult getResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Request + Model'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postResult != null
                ? postResult.id +
                    ' | ' +
                    postResult.name +
                    ' | ' +
                    postResult.job +
                    ' | ' +
                    postResult.created
                : 'Tidak ada data!')),
            Text((getResult != null
                ? getResult.id.toString() + ' | ' + getResult.name
                : 'Tidak ada user data!')),
            Container(
              color: Colors.blue[400],
              child: MaterialButton(
                onPressed: () {
                  PostResult.sendRequest('Badu', 'Dokter').then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text(
                  'POST',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue[400],
              child: MaterialButton(
                onPressed: () {
                  GetResult.sendRequest().then((value) {
                    getResult = value;
                    setState(() {});
                  });
                },
                child: Text(
                  'GET',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
