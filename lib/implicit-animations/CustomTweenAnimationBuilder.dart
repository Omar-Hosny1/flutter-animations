import 'package:flutter/material.dart';

class CustomTweenAnimationBuilder extends StatefulWidget {
  CustomTweenAnimationBuilder({super.key});

  @override
  State<CustomTweenAnimationBuilder> createState() =>
      _CustomTweenAnimationBuilderState();
}

class _CustomTweenAnimationBuilderState
    extends State<CustomTweenAnimationBuilder> {
  Color startColor = Colors.black;
  Color endColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (startColor == Colors.black) {
                startColor = Colors.red;
                endColor = Colors.blue;
                return;
              }
              startColor = Colors.black;
              endColor = Colors.green;
            });
          },
          child: TweenAnimationBuilder(
            builder: (context, value, child) {
              return Container(
                child: child,
                width: 250,
                height: 250,
                color: value,
              );
            },
            tween: ColorTween(begin: startColor, end: endColor),
            curve: Curves.ease,
            duration: Duration(seconds: 3),
            child: Icon(
                Icons.gpp_good_outlined,
                size: 180,
                color: Colors.black,
              ),
          ),
        ),
      ),
    );
  }
}
