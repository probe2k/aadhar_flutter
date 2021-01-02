import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aadhar Details Fetcher!',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/home.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Center(
          child: Container(
            height: 50.0,
            width: 150.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 20.0),
                  blurRadius: 30.0,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.0),
            ),
          ),
        ),
      ),
    );
  }
}
