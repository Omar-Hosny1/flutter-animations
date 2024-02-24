import 'package:flutter/material.dart';

class CustomAnimatedPositionedDirectional extends StatefulWidget {
  CustomAnimatedPositionedDirectional({super.key});

  @override
  State<CustomAnimatedPositionedDirectional> createState() =>
      _CustomAnimatedPositionedDirectionalState();
}

class _CustomAnimatedPositionedDirectionalState
    extends State<CustomAnimatedPositionedDirectional> {
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
            AnimatedPositionedDirectional(
              // bottom: selected ? 500 : 0,
              curve: Curves.ease,
              duration: Duration(seconds: 1),
              child: Container(
                width: 500,
                height: 500,
                color: Colors.black,
              ),
            ),
            // has start and end
            AnimatedPositionedDirectional(
              duration: Duration(seconds: 1),
              end: 0,
              child: Container(
                width: 100,
                height: 210,
                color: Colors.red,
                child: Text(
                  'عمر حسني',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // has left and right
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              right: 0,
              bottom: 0,
              child: Container(
                width: 100,
                height: 210,
                color: Colors.red,
                child: Text(
                  'عمر حسني',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ]),
        ),
      ),
    );
  }
}
