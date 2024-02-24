import 'package:flutter/material.dart';

class CustomAnimatedRotation extends StatefulWidget {
  CustomAnimatedRotation({super.key});

  @override
  State<CustomAnimatedRotation> createState() => _CustomAnimatedRotationState();
}

class _CustomAnimatedRotationState extends State<CustomAnimatedRotation> {
  double turns = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              turns++;
            });
          },
          child: AnimatedRotation(
            turns: turns,
            duration: Duration(seconds: 1),
            child: Icon(
              Icons.gpp_good_outlined,
              size: 130,
            ),
          ),
        ),
      ),
    );
  }
}
