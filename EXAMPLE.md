### A complete example code

```dart
import 'package:flutter/material.dart';
import 'package:hero_button/hero_button.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My HeroButton"),
      ),
      body: Column(
        children: [
          HeroButton(
            preIcon: Icons.person,
            height: 40,
            borderRound: true,
            textColor: Colors.white,
            textSize: 20,
            backColor: Colors.red,
            padding: EdgeInsets.all(20),
            fullWidth: true,
            label: "My Name is Button",
            onPressed: () {
              print("Button Clicked!");
            },
          )
        ],
      ),
    );
  }
}
```
