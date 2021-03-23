import 'package:flutter/material.dart';
import '../bloc/color_bloc.dart';

class BelajarPureBloc extends StatefulWidget {
  @override
  _BelajarPureBlocState createState() => _BelajarPureBlocState();
}

class _BelajarPureBlocState extends State<BelajarPureBloc> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Belajar Pure BLoC'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.amber,
          builder: (bloc, snapshot) {
            return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 100,
                width: 100,
                color: snapshot.data);
          },
        ),
      ),
    );
  }
}
