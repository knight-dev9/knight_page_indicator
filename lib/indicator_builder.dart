import 'package:flutter/material.dart';
import 'package:knight_page_indicator/indicator_attributes.dart';
import 'package:knight_page_indicator/indicator_style.dart';

abstract class IndicatorBuilder extends StatelessWidget {
  const IndicatorBuilder({super.key});
}

class BasicIndicatorBuilder extends IndicatorBuilder {
  final IndicatorStyle style;
  final bool isSelected;
  final BasicIndicatorAttributes attribute;

  const BasicIndicatorBuilder({
    super.key,
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
      case IndicatorStyle.widget:
        return const SizedBox();
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

class WidgetIndicatorBuilder extends IndicatorBuilder {
  final bool isSelected;
  final WidgetIndicatorAttributes attribute;

  const WidgetIndicatorBuilder({
    super.key,
    required this.isSelected,
    required this.attribute,
  });

  Widget get widget {
    return isSelected ? attribute.selectedWidget : attribute.unselectedWidget;
  }

  double get margin {
    return attribute.size / 2;
  }

  double get radius {
    return attribute.size / 2;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: attribute.animationDuration,
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: attribute.size,
      width: attribute.size,
      child: widget,
    );
  }
}
