A customizable, animated button widget for Flutter, featuring hero animations, loading states, async actions, and more.

## Features

- Customizable appearance (colors, shapes, sizes, icons).
- Animations (hover effects, press animations, transition animations).
- Gradient and shadow support.
- Accessibility features.
- Loading state with indicator.
- Async actions with automatic state management.
- Icon and text combination.
- Custom callbacks (long press, double-tap).
- Style presets and theming support.
- Performance optimization.
- Internationalization support.

## Basic Usage

```dart
import 'package:hero_button/hero_button.dart';

HeroButton(
  tag: 'hero-button-1',
  child: Text('Press Me'),
  onPressed: () {
    // Your callback function
  },
);
```

## Customizing Appearance

```dart
HeroButton(
  tag: 'hero-button-2',
  child: Text('Custom Button'),
  backgroundColor: Colors.red,
  elevation: 4.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
  ),
);
```

## Loading State

```dart
HeroButton(
  tag: 'hero-button-3',
  child: Text('Loading Button'),
  isLoading: true,
  loadingIndicator: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
  ),
);
```

## Using Hero Animation

```dart
HeroButton(
  tag: 'hero-button-4',
  child: Text('Hero Button'),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(),
      ),
    );
  },
);
```

## Advanced Customization

```dart
HeroButton(
  tag: 'hero-button-5',
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.white),
      SizedBox(width: 8),
      Text('Star Button'),
    ],
  ),
  backgroundColor: Colors.purple,
  gradient: LinearGradient(
    colors: [Colors.purple, Colors.blue],
  ),
  boxShadow: BoxShadow(
    color: Colors.black26,
    blurRadius: 10.0,
  ),
  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  width: 200.0,
  height: 50.0,
  onPressed: () {
    // Your callback function
  },
);
```

# Report bugs or issues

You are welcome to open a _[ticket](https://github.com/rohit-chouhan/hero_button/issues)_ on github if any problems arise. New ideas are always welcome.

# Copyright and License

> Copyright © 2022 **[Rohit Chouhan](https://rohitchouhan.com)**. Licensed under the _[MIT LICENSE](https://github.com/rohit-chouhan/hero_button/blob/main/LICENSE)_.
