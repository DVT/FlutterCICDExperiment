import 'dart:async';

import 'package:flutter_ci_cd_experiment/counter_event.dart';

class CounterBloc {
  int _counter = 0;
  final _counterStateController = StreamController<int>();
  final _counterEventController = StreamController<CounterEvent>();

  StreamSink<int> get _inCounter => _counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    ///Whenever there is a new event, we want to mep it to a new state
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    event is IncrementEvent ? _counter++ : _counter--;
    _inCounter.add(_counter);
  }

  void dispose(){
    ///to close stream controllers to avoid memory leaks
    _counterStateController.close();
    _counterEventController.close();
  }
}
