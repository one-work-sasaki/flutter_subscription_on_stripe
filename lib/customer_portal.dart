import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomerPortal extends StatefulWidget {
  final String url;
  const CustomerPortal({Key? key, required this.url}) : super(key: key);

  @override
  State<CustomerPortal> createState() => _CustomerPortalState();
}

class _CustomerPortalState extends State<CustomerPortal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (NavigationRequest request){
            if(request.url.startsWith('https://cancel')){
              Navigator.of(context).pop('cancel');
            }
            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }
}
