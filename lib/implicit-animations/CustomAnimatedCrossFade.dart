import 'package:flutter/material.dart';

class CustomAnimatedCrossFade extends StatefulWidget {
  CustomAnimatedCrossFade({super.key});

  @override
  State<CustomAnimatedCrossFade> createState() =>
      _CustomAnimatedCrossFadeState();
}

class _CustomAnimatedCrossFadeState extends State<CustomAnimatedCrossFade> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    // To avoid the jumping in the animation you can use the layoutBuilder
    // this happens if the child 1 has different size from the child 2

    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (crossFadeState == CrossFadeState.showFirst) {
                crossFadeState = CrossFadeState.showSecond;
                return;
              }
              crossFadeState = CrossFadeState.showFirst;
            });
          },
          child: AnimatedCrossFade(
            // To avoid the jumping in the animation you can use the layoutBuilder prop
            // this happens if the child 1 has different size from the child 2
            layoutBuilder:
                (topChild, topChildKey, bottomChild, bottomChildKey) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: topChild,
                  ),
                  Positioned(child: bottomChild),
                ],
              );
            },
            firstChild: Container(
              width: 120,
              height: 70,
              color: Colors.black,
            ),
            secondChild: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            crossFadeState: crossFadeState,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
