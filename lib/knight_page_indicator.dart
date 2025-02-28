library knight_page_indicator;

import 'package:flutter/material.dart';
import 'package:knight_page_indicator/indicator_attributes.dart';
import 'package:knight_page_indicator/indicator_builder.dart';
import 'package:knight_page_indicator/indicator_style.dart';

class IndicatorLayout extends StatelessWidget {
  final IndicatorStyle style;
  final IndicatorAttributes attribute;
  final int current;
  final int totalCount;

  const IndicatorLayout({
    super.key,
    this.style = IndicatorStyle.circle,
    required this.attribute,
    required this.current,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        totalCount,
        (index) {
          if (style == IndicatorStyle.widget &&
              attribute is WidgetIndicatorAttributes) {
            return WidgetIndicatorBuilder(
              key: key,
              attribute: attribute as WidgetIndicatorAttributes,
              isSelected: current == index,
            );
          } else if (style != IndicatorStyle.widget &&
              attribute is BasicIndicatorAttributes) {
            return BasicIndicatorBuilder(
              key: key,
              style: style,
              attribute: attribute as BasicIndicatorAttributes,
              isSelected: current == index,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
