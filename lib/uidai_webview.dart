import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:html/parser.dart';

class AadharWebView extends StatelessWidget {
  final String url;

  AadharWebView({this.url});

  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aadhar Verification',
        ),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext context) {
          return WebView(
            initialUrl: 'https://resident.uidai.gov.in/verify',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://resident.uidai')) {
                fetchData();
                return NavigationDecision.navigate;
              }
              return NavigationDecision.prevent;
            },
            onPageStarted: (String url) {
              print('Page loading: $url');
            },
            onPageFinished: (String url) {
              print('Page loaded: $url');
            },
            gestureNavigationEnabled: true,
          );
        },
      ),
    );
  }

  void fetchData() async {
    String data = await _controller
        .evaluateJavascript('document.documentElement.innerHTML');
    var dom = parse(data);
    print(dom.getElementById('pt-2').innerHtml);
  }
}
