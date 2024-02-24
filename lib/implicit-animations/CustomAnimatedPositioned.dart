import 'package:flutter/material.dart';

class CustomAnimatedPositioned extends StatefulWidget {
  CustomAnimatedPositioned({super.key});

  @override
  State<CustomAnimatedPositioned> createState() =>
      _CustomAnimatedPositionedState();
}

class _CustomAnimatedPositionedState extends State<CustomAnimatedPositioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Stack(children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              child: Container(
                width: 50,
                height: 50,
                child: Text('HELLO', textAlign: TextAlign.center,),
              ),
            ),
            AnimatedPositioned(
              bottom: selected ? 50 : 0,
              curve: Curves.ease,
              duration: Duration(seconds: 1),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
