A simple widget to display indicators embedded with different styles.

## Usage
Two required arguments are the current and totalCount.
Pass the current index to the argument "current" and your total length to the argument "totalCount".
You can change the indicator style using the argument "style".

```dart

import 'package:knight_page_indicator/knight_page_indicator.dart';

IndicatorLayout(
style: IndicatorStyle.circle,
attribute: IndicatorAttributes(),
current: yourCurrentIndex(),
totalCount: yourLength()
);
```

## Available attributes

| Attributes                  | Type        | Description                                             |
|-----------------------------|-------------|---------------------------------------------------------|
| `unselectedBackgroundColor` | Color?      | Background color of the unselected / default indicator. |
| `selectedBackgroundColor`   | Color?      | Background color of the selected / focused indicator.   |
| `unselectedBorderColor`     | Color?      | Border color of the unselected / default indicator.     |
| `selectedBorderColor`       | Color?      | Border color of the selected / focused indicator.       |
| `borderSize`                | double?     | Border size of the indicator.                           |
| `size`                      | double?     | Size of the indicator.                                  |
| `animationDuration`         | Duration?   | Transition duration between indicators.                 |

## Author

This plugin is developed by Atirek Pothiwala.