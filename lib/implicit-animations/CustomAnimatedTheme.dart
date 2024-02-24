import 'package:flutter/material.dart';

class CustomAnimatedTheme extends StatefulWidget {
  const CustomAnimatedTheme({super.key});

  @override
  State<CustomAnimatedTheme> createState() => _CustomAnimatedThemeState();
}

class _CustomAnimatedThemeState extends State<CustomAnimatedTheme> {
  final darkTheme = ThemeData(
    primaryColor: Colors.green,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        Colors.blue,
      ),
      trackColor: MaterialStateProperty.all(
        Colors.grey,
      ),
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(66, 100, 100, 100),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 33, 33, 33),
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.blue,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        Colors.green,
      ),
      trackColor: MaterialStateProperty.all(
        const Color.fromARGB(255, 217, 217, 217),
      ),
    ),
    textTheme: TextTheme(
        titleSmall: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black)),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: const Color.fromARGB(66, 77, 77, 77),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
    ),
  );

  bool isLight = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: Duration(milliseconds: 500),
      data: isLight ? darkTheme : lightTheme,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Theme Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Toggle Theme',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Switch(
                value: isLight,
                onChanged: (value) {
                  isLight = !isLight;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
