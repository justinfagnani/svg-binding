import 'dart:async';
import 'dart:svg';

import 'package:polymer/polymer.dart';
import 'package:quiver/iterables.dart';

@CustomTag('bar-chart')
class BarChart extends PolymerElement {

  @observable Iterable xTicks;
  @observable Iterable yTicks;

  @published String xLabel;
  @published String yLabel;
  @published int xRange;
  @published int yRange;
  @published Iterable<num> data;

  @observable int width;
  @observable int height;

  @observable SvgElement hoverElement;
  @observable int hoverIndex;
  @observable var hoverData;

  BarChart.created() : super.created();

  enteredView() {
    SvgElement svg = $['svg'];
    width = svg.offset.width;
    height = svg.offset.height;
  }

  mouseOver(event, detail, target) {
    hoverElement = target;
    hoverIndex = int.parse(hoverElement.dataset['index']);
    hoverData = data.elementAt(hoverIndex);
  }

  mouseOut(event, detail, target) {
    if (target == hoverElement) {
      hoverElement = null;
      hoverIndex = null;
      hoverData = null;
    }
  }
}
