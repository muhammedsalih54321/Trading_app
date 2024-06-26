import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Marketscreen extends StatefulWidget {
  const Marketscreen({super.key});

  @override
  State<Marketscreen> createState() => _MarketscreenState();
}

class _MarketscreenState extends State<Marketscreen> {
    late WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://in.tradingview.com/chart/ImoOfilv/?symbol=BITSTAMP%3ABTCUSD')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://in.tradingview.com/chart/ImoOfilv/?symbol=BITSTAMP%3ABTCUSD'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor:Color(0xFF1E1E1E),
         body: WebViewWidget(controller: controller),
    );
  }
}