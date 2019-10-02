abstract class CounterEvent {
  ///Base class from which all increment and decrement events will inherit
}

///These two events will get passed into the Bloc (Business Logic Component)
class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
