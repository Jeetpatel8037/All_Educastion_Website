import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Tutorialpoints extends StatefulWidget {
  const Tutorialpoints({Key? key}) : super(key: key);

  @override
  State<Tutorialpoints> createState() => _TutorialpointsState();
}

class _TutorialpointsState extends State<Tutorialpoints> {
  final GlobalKey inappWebview = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  final GlobalKey inAppWEBkEY = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: AppBar(
        title: const Text("Tutorialpoints"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                inAppWebViewController!.goBack();
              }
            },
          ),
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushNamed('AllAducastionSide');
              }),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                inAppWebViewController!.goForward();
              }
            },
          ),
        ],
      ),
      body: InAppWebView(
        key: inAppWEBkEY,
        initialUrlRequest: URLRequest(
            url: Uri.parse("https://www.tutorialspoint.com/index.htm")),
      ),
    );
  }
}
