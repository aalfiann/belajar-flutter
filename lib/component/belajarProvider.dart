import 'package:belajar/provider/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelajarProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
                    'Provider State',
                    style: TextStyle(color: applicationColor.color)))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  width: 100,
                  height: 100,
                  color: applicationColor.color,
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.all(5), child: Text('AB')),
                  Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                          value: applicationColor.isLightBlue,
                          onChanged: (newValue) {
                            applicationColor.isLightBlue = newValue;
                          })),
                  Container(margin: EdgeInsets.all(5), child: Text('LB'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
