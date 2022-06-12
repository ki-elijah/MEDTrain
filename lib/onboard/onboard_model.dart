import 'package:flutter/material.dart';

class OnBoardModel{
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnBoardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
});
}

List<OnBoardModel> screens = <OnBoardModel>[
  OnBoardModel(
    img: 'assets/images/img-1.png',
    text: 'Training',
    desc: 'Training on medical equipment made easy',
    bg: Colors.white,
    button: Color(0xFF006FDB),
  ),
  OnBoardModel(
    img: 'assets/images/img-2.png',
    text: 'Chat',
    desc: 'Contact us for medical machine assistance',
    bg: Colors.white,
    button: Color(0xFF006FDB),
  ),
  OnBoardModel(
    img: 'assets/images/img-3.png',
    text: 'Learn',
    desc: 'learn online ',
    bg: Colors.white,
    button: Color(0xFF006FDB),
  ),
];