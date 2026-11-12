import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPagePanel extends StatefulWidget {
  const WebPagePanel({super.key});

  @override
  State<WebPagePanel> createState() => _WebPagePanelState();
}

class _WebPagePanelState extends State<WebPagePanel> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://flutter.dev/'));
  }

  @override
  Widget build(BuildContext context) {
    // Bounded height: ListView ke andar WebView ko fixed height chahiye
    return SizedBox(
      height: 360,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}
