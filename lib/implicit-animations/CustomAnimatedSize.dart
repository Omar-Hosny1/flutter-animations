import 'package:flutter/material.dart';

class CustomAnimatedSize extends StatefulWidget {
  CustomAnimatedSize({super.key});

  @override
  State<CustomAnimatedSize> createState() => _CustomAnimatedSizeState();
}

class _CustomAnimatedSizeState extends State<CustomAnimatedSize> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (size == 100) {
                size = 200;
                return;
              }
              size = 100;
            });
          },
          child: AnimatedSize(
            duration: Duration(seconds: 1),
            child: Icon(
              Icons.gpp_good_outlined,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}
