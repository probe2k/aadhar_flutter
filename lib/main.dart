import 'package:flutter/material.dart';
import 'package:aadhar_webview/app_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}