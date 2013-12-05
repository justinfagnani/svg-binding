import 'dart:async';

import 'package:polymer/polymer.dart';
import 'package:quiver/iterables.dart';

@CustomTag('analog-clock')
class AnalogClock extends PolymerElement {
  @observable DateTime date = new DateTime.now();
  @reflectable Iterable<num> major = range(12).toList();
  @reflectable Iterable<num> minor = range(60).toList();

  AnalogClock.created() : super.created() {
    new Timer.periodic(new Duration(seconds: 1), (_) {
      date = new DateTime.now();
    });
  }
}
