import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:async';

enum ColorEvent { to_amber, to_light_blue }

class ColorBloc {
  // Default Color
  Color _color = Colors.amber;

  // Input UI
  //   >> EventSink(public)
  //     >> StreamController
  //       >> mapEventToState(private)
  //         >> StateSink(private)
  //           >> StreamController
  //             >> Output UI

  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;

  Stream<Color> get stateStream => _stateController.stream;

  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }
    // We should add statesink before going to stream to the output UI
    _stateSink.add(_color);
  }

  // We have to create a listener for incoming stream from UI
  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  // When done, we have to release the memory consumption of stream object
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
