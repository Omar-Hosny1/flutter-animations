import 'package:flutter/material.dart';

class CustomAnimatedScale extends StatefulWidget {
  CustomAnimatedScale({super.key});

  @override
  State<CustomAnimatedScale> createState() => _CustomAnimatedScaleState();
}

class _CustomAnimatedScaleState extends State<CustomAnimatedScale> {
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (scale == 1) {
                scale = 2;
                return;
              }
              scale = 1;
            });
          },
          child: AnimatedScale(
            scale: scale,
            duration: Duration(seconds: 1),
            child: Icon(
              Icons.gpp_good_outlined,
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
