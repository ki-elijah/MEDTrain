import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:medtrain/home.dart';
import 'package:medtrain/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDTrain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: Icons.home,
          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.blue,
          nextScreen: MyHomePage(title: 'MEDTrain')),
    );
  }
}
