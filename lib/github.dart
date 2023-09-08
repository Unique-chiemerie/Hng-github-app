import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitWeb extends StatefulWidget {
  const GitWeb({super.key});

  @override
  State<GitWeb> createState() => _GitWebState();
}

class _GitWebState extends State<GitWeb> {
//initialise our webcontroller
  final webctrl = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(
      Uri.parse('https://github.com/Unique-chiemerie'),
    );

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: webctrl);
  }
}
