import 'package:flutter/material.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  CustomAnimatedOpacity({super.key});

  @override
  State<CustomAnimatedOpacity> createState() => _CustomAnimatedOpacityState();
}

class _CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (opacity == 1) {
                opacity = 0;
                return;
              }
              opacity = 1;
            });
          },
          child: AnimatedOpacity(
            opacity: opacity,
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
