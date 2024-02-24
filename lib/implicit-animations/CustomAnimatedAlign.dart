import 'package:flutter/material.dart';

class CustomAnimatedAlign extends StatefulWidget {
  CustomAnimatedAlign({super.key});

  @override
  State<CustomAnimatedAlign> createState() => _CustomAnimatedAlignState();
}

class _CustomAnimatedAlignState extends State<CustomAnimatedAlign> {
  Alignment align = Alignment.topCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (align == Alignment.topCenter) {
                align = Alignment.center;
                return;
              }
              align = Alignment.topCenter;
            });
          },
          child: AnimatedAlign(
            alignment: align,
            curve: Curves.ease,
            duration: Duration(seconds: 1),
            child: Icon(
              Icons.gpp_good_outlined,
              size: 180,
            ),
          ),
        ),
      ),
    );
  }
}
