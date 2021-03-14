import 'package:flutter/material.dart';
import '../theme/custom_button.dart';

class BelajarTheme extends StatefulWidget {
  @override
  _BelajarThemeState createState() => _BelajarThemeState();
}

class _BelajarThemeState extends State<BelajarTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Theme'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  child: Text(
                    'Tester',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                  type: 'success',
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  child: Text('Tester',style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                  type: 'primary',
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: CustomButton(
                  child: Text('Tester',style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                  type: 'danger',
                ),
              ),
            ],
          ),
        ));
  }
}
