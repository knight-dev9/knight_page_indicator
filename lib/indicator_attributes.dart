import 'package:flutter/material.dart';

abstract class IndicatorAttributes {}

class BasicIndicatorAttributes extends IndicatorAttributes {
  final Color unselectedBackgroundColor;
  final Color selectedBackgroundColor;
  final Color unselectedBorderColor;
  final Color selectedBorderColor;
  final double borderSize;
  final double size;
  final Duration animationDuration;

  BasicIndicatorAttributes({
    this.unselectedBackgroundColor = const Color(0x33FFFFFF),
    this.selectedBackgroundColor = Colors.white,
    this.unselectedBorderColor = Colors.transparent,
    this.selectedBorderColor = Colors.white,
    this.borderSize = 1,
    this.size = 8,
    this.animationDuration = Durations.short4,
  });
}

class WidgetIndicatorAttributes extends IndicatorAttributes {
  final Widget unselectedWidget;
  final Widget selectedWidget;
  final double size;
  final Duration animationDuration;

  WidgetIndicatorAttributes({
    required this.unselectedWidget,
    required this.selectedWidget,
    this.size = 8,
    this.animationDuration = Durations.short4,
  });
}
