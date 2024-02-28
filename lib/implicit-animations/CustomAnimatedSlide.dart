import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAnimatedSlide extends StatefulWidget {
  const CustomAnimatedSlide({super.key});

  @override
  State<CustomAnimatedSlide> createState() => _CustomAnimatedSlideState();
}

class _CustomAnimatedSlideState extends State<CustomAnimatedSlide> {
  Offset offset = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            AnimatedSlide(
              offset: offset,
              duration: Duration(
                milliseconds: 500,
              ),
              child: FlutterLogo(),
            ),

            Slider(
              max: 5,
              min: -5,
              value: offset.dx,
              onChanged: (v) {
                setState(
                  () {
                    offset = Offset(v, offset.dy);
                  },
                );
              },
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Slider(
                        max: 5,
                        min: -5,
                        value: offset.dy,
                        onChanged: (v) {
                          setState(
                            () {
                              offset = Offset(offset.dx, v);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )

            // ElevatedButton(
            //   onPressed: () {
            //     offset = Offset(offset.dx, offset.dy - 5);
            //     setState(() {});
            //   },
            //   child: Text('up'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     offset = Offset(offset.dx, offset.dy + 5);
            //     setState(() {});
            //   },
            //   child: Text('down'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     offset = Offset(offset.dx + 5, offset.dy);
            //     setState(() {});
            //   },
            //   child: Text('right'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     offset = Offset(offset.dx - 5, offset.dy);
            //     setState(() {});
            //   },
            //   child: Text('left'),
            // )
          ],
        ),
      ),
    );
  }
}
