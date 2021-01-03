import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class AadharWebView extends StatelessWidget {
  String url;

  AadharWebView({this.url});

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

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
              _controller.complete(webViewController);
            },
            navigationDelegate: (NavigationRequest request) {
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
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
}
