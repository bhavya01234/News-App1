import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class DetailViewScreen extends StatelessWidget {
  String newsUrl;
  DetailViewScreen({super.key, required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(),
      // WebView(
      //   initialUrl:widget.newsUrl,
      // ),
        //WebViewWidget(),
    );
  }
}
