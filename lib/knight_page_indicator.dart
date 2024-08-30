library knight_page_indicator;

import 'package:flutter/material.dart';

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
}

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
          return _Indicator(
            style: style,
            attribute: attribute,
            isSelected: current == index,
          );
        },
      ),
    );
  }
}

class IndicatorAttributes {
  final Color unselectedBackgroundColor;
  final Color selectedBackgroundColor;
  final Color unselectedBorderColor;
  final Color selectedBorderColor;
  final double borderSize;
  final double size;
  final Duration animationDuration;

  IndicatorAttributes({
    this.unselectedBackgroundColor = const Color(0x33FFFFFF),
    this.selectedBackgroundColor = Colors.white,
    this.unselectedBorderColor = Colors.transparent,
    this.selectedBorderColor = Colors.white,
    this.borderSize = 1,
    this.size = 8,
    this.animationDuration = Durations.short4,
  });
}

class _Indicator extends StatelessWidget {
  final IndicatorStyle style;
  final bool isSelected;
  final IndicatorAttributes attribute;

  const _Indicator({
    required this.style,
    required this.isSelected,
    required this.attribute,
  });

  Color get backgroundColor {
    return isSelected
        ? attribute.selectedBackgroundColor
        : attribute.unselectedBackgroundColor;
  }

  Color get unselectedBackgroundColor {
    return isSelected
        ? attribute.selectedBorderColor
        : attribute.unselectedBorderColor;
  }

  double get margin {
    return attribute.size / 2;
  }

  double get radius {
    return attribute.size / 2;
  }

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case IndicatorStyle.circle:
        return circle;
      case IndicatorStyle.circleDuet:
        return circleDuet;
      case IndicatorStyle.circleDrop:
        return circleDrop;
      case IndicatorStyle.square:
        return square;
      case IndicatorStyle.squareDuet:
        return squareDuet;
      case IndicatorStyle.rectangle:
        return rectangle;
      case IndicatorStyle.line:
        return line;
      case IndicatorStyle.horizontalPipe:
        return horizontalPipe;
      case IndicatorStyle.verticalPipe:
        return verticalPipe;
    }
  }

  Widget get circle {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: attribute.size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  Widget get circleDuet {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: isSelected ? attribute.size * 2.5 : attribute.size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  Widget get circleDrop {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      padding: EdgeInsets.all(attribute.size / 3),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: unselectedBackgroundColor,
          width: attribute.borderSize,
        ),
      ),
      child: CircleAvatar(radius: radius, backgroundColor: backgroundColor),
    );
  }

  Widget get square {
    return AnimatedContainer(
        duration: attribute.animationDuration,
        margin: EdgeInsets.symmetric(horizontal: margin),
        height: attribute.size,
        width: attribute.size,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
              color: unselectedBackgroundColor, width: attribute.borderSize),
        ));
  }

  Widget get squareDuet {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: isSelected ? attribute.size * 2.5 : attribute.size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
      ),
    );
  }

  Widget get rectangle {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: attribute.size * 2.5,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
      ),
    );
  }

  Widget get line {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: 2,
      width: attribute.size * 2.5,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
      ),
    );
  }

  Widget get horizontalPipe {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: attribute.size * 2.5,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  Widget get verticalPipe {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size * 2.5,
      width: attribute.size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
            color: unselectedBackgroundColor, width: attribute.borderSize),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
