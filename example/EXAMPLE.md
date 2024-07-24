## Example

Complete example code for hero_button.

```dart
import 'package:flutter/material.dart';
import 'package:hero_button/hero_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero Button Example'),
        ),
        body: Center(
          child: HeroButton(
            tag: 'example-button',
            child: Text('Press Me'),
            onPressed: () {
              print('Button Pressed!');
            },
          ),
        ),
      ),
    );
  }
}
```
