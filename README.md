<p align="center"><img src="https://github.com/rohit-chouhan/hero_button/blob/main/her_button.jpg?raw=true"></p>
<p align="center">A fast and lite beautiful button library for flutter, made easy to use properties which can't used in default button, user can apply color, icon, padding easily which using extra code.</p>


### Properties usage
|   property | description   | example  | dataType |
| ------------ | ------------ | ------------ | ------------ |
|  preIcon |  Add Icon before button label | ` preIcon: Icons.person`  |Icons |
|label| Button label|`label:"Click Me"`| String|
|  postIcon |  Add Icon after button label | ` postIcon: Icons.person`  | Icons|
|  fullWidth |  Make button full width acording screen  |  `fullWidth: true`  |bool|
|  height |  Apply custom hight to button  |  `height: 40`  |double|
|  textColor |  Apply custom foreground color on button code  |  ` textColor: Colors.white,`  |Colors|
|  backColor |  Apply custom background color on button code  |  ` backColor: Colors.white,`  |Colors|
|textSize| Apply custom text size on button | `textSize: 20`|double|
|  borderRound |  Make button border smooth/border radius  |  `borderRound:true`  |bool|
|  padding |  Apply Padding  |  `padding: EdgeInsets.all(20)`  |EdgeInsetsGeometry|
|  onPressed |  Apply Event on button  |  ` onPressed: ()=> {},`  |Function|


### Example Syntax
```dart
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
```

### Screenshot
<img width="300" src="https://github.com/rohit-chouhan/hero_button/blob/main/preview.png?raw=true"/>

