import 'package:flutter/material.dart';

class CustomAnimatedDefaultTextStyle extends StatefulWidget {
  CustomAnimatedDefaultTextStyle({super.key});

  @override
  State<CustomAnimatedDefaultTextStyle> createState() =>
      _CustomAnimatedDefaultTextStyleState();
}

class _CustomAnimatedDefaultTextStyleState
    extends State<CustomAnimatedDefaultTextStyle> {
  double fontSize = 20;
  Color color = Colors.black;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
              if (isSelected) {
                fontSize = 50;
                color = Colors.blue;
                return;
              }
              fontSize = 20;
              color = Colors.black;
            });
          },
          child: AnimatedDefaultTextStyle(
            style: TextStyle(color: color, fontSize: fontSize),
            curve: Curves.ease,
            duration: Duration(seconds: 1),
            child: Text('Hello World')
          ),
        ),
      ),
    );
  }
}
