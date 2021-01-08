import 'package:flutter/material.dart';
import 'package:aadhar_webview/uidai_webview.dart';

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
          'Aadhar Details\nFetcher!',
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
          child: InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => AadharWebView(),
                ),
              ),
            },
            child: Container(
              width: 150.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(
                      0.0,
                      20.0,
                    ),
                    blurRadius: 30.0,
                    color: Colors.black12,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  22.0,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 60.0,
                    width: 110.0,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 24.0,
                    ),
                    child: Text(
                      'Check Status',
                      style: Theme.of(context).textTheme.button.apply(
                            color: Colors.black,
                          ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          95.0,
                        ),
                        topLeft: Radius.circular(
                          95.0,
                        ),
                        bottomRight: Radius.circular(
                          200.0,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
