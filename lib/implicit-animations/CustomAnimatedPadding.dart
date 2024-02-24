import 'package:flutter/material.dart';

class CustomAnimatedPadding extends StatefulWidget {
  CustomAnimatedPadding({super.key});

  @override
  State<CustomAnimatedPadding> createState() => _CustomAnimatedPaddingState();
}

class _CustomAnimatedPaddingState extends State<CustomAnimatedPadding> {
  double padding = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (padding == 20) {
                padding = 50;
                return;
              }
              padding = 20;
            });
          },
          child: Container(
            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
            child: AnimatedPadding(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.all(padding),
              child: Icon(
                Icons.gpp_good_outlined,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
