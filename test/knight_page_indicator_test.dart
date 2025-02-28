import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:knight_page_indicator/indicator_attributes.dart';
import 'package:knight_page_indicator/knight_page_indicator.dart';

void main() {
  test('Testing Internally', () {
    IndicatorLayout basicLayout = IndicatorLayout(
      attribute: BasicIndicatorAttributes(),
      current: 0,
      totalCount: 10,
    );
    assert(basicLayout != null);
    assert(basicLayout is Widget);

    IndicatorLayout widgetLayout = IndicatorLayout(
      attribute: WidgetIndicatorAttributes(
        unselectedWidget: const SizedBox(),
        selectedWidget: const SizedBox(),
      ),
      current: 0,
      totalCount: 10,
    );
    assert(widgetLayout != null);
    assert(widgetLayout is Widget);
  });
}
