import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Artfolio',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: HomeScreen(), // 主界面设置为 HomeScreen
  ));
}
