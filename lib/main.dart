import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medtrain/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboard/onboard.dart';

int? isViewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEDTrain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isViewed !=0 ? const OnBoard() : const Splash(),
    );
  }
}
