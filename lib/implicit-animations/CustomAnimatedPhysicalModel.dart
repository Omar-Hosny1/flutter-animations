import 'package:flutter/material.dart';

class CustomAnimatedPhysicalModel extends StatefulWidget {
  CustomAnimatedPhysicalModel({super.key});

  @override
  State<CustomAnimatedPhysicalModel> createState() =>
      _CustomAnimatedPhysicalModelState();
}

class _CustomAnimatedPhysicalModelState
    extends State<CustomAnimatedPhysicalModel> {
  bool isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            isFlat = !isFlat;
            setState(() {});
          },
          child: AnimatedPhysicalModel(
            color: Colors.white,
            elevation: isFlat ? 0 : 8.0,
            shadowColor: Colors.black,
            borderRadius: BorderRadius.circular(40),
            shape: BoxShape.rectangle,
            duration: Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android),
            ),
          ),
        ),
      ),
    );
  }
}
