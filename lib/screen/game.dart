import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class Game_page extends StatefulWidget {
  const Game_page({Key? key}) : super(key: key);

  @override
  _Game_pageState createState() => _Game_pageState();
}

class _Game_pageState extends State<Game_page> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    String gm = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: gm,
              onProgress: (a) {
                if (a == 100) {
                  setState(() {
                    isVisible = false;
                  });
                }
              },
            ),
            Center(
              child: Visibility(
                visible: isVisible,
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
