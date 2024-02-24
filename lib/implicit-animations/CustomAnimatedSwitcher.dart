import 'package:flutter/material.dart';

class CustomAnimatedSwither extends StatefulWidget {
  CustomAnimatedSwither({super.key});

  @override
  State<CustomAnimatedSwither> createState() => _CustomAnimatedSwitherState();
}

class _CustomAnimatedSwitherState extends State<CustomAnimatedSwither> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isFavourite = !isFavourite;
            });
          },
          child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: isFavourite
                ? Icon(key: UniqueKey(), Icons.favorite_border_outlined)
                : Icon(key: UniqueKey(), Icons.favorite),
          ),
        ),
      ),
    );
  }
}
