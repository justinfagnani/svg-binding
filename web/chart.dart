import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:quiver/iterables.dart';
import 'package:svg_binding/bar_chart.dart';

main() {
  print("main");
  initPolymer().run(() {
    print("running");
    BarChart chart = querySelector('#chart');
    chart.data = [1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1];
    chart.yTicks = range(7);
    chart.xTicks = range(chart.data.length);
  });
}
