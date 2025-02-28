enum IndicatorStyle {
  circle,
  circleDuet,
  circleDrop,
  square,
  squareDuet,
  rectangle,
  line,
  horizontalPipe,
  verticalPipe,
  widget;

  String name() {
    switch (this) {
      case IndicatorStyle.circle:
        return "Circle";
      case IndicatorStyle.circleDuet:
        return "Circle Duet";
      case IndicatorStyle.circleDrop:
        return "Circle Drop";
      case IndicatorStyle.square:
        return "Square";
      case IndicatorStyle.squareDuet:
        return "Square Duet";
      case IndicatorStyle.rectangle:
        return "Rectangle";
      case IndicatorStyle.line:
        return "Line";
      case IndicatorStyle.horizontalPipe:
        return "Horizontal Pipe";
      case IndicatorStyle.verticalPipe:
        return "Vertical Pipe";
      case IndicatorStyle.widget:
        return "Widget";
    }
  }
}
