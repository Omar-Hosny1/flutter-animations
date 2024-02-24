import 'package:flutter/material.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedAlign.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedCrossFade.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedDefaultTextStyle.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedOpacity.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedPadding.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedPhysicalModel.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedPositioned.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedPositionedDirectional.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedRotation.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedScale.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedSize.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedSwitcher.dart';
import 'package:flutter_animations/implicit-animations/CustomAnimatedTheme.dart';
import 'package:flutter_animations/implicit-animations/CustomTweenAnimationBuilder.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomAnimatedPositionedDirectional(),
    );
  }
}
