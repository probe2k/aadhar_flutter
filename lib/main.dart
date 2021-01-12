import 'package:flutter/material.dart';
import 'package:aadhar_webview/app_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          buttonColor: Colors.purpleAccent,
        ),
      ),
      home: AppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
