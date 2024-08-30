import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:knight_page_indicator/knight_page_indicator.dart';

void main() {
  test('Testing Internally', () {
    IndicatorLayout layout = IndicatorLayout(
      attribute: IndicatorAttributes(),
      current: 0,
      totalCount: 10,
    );
    assert(layout != null);
    assert(layout is Widget);
  });
}
