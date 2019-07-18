import 'package:flutter/material.dart';


class KYLChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KYLChatPage() ;
  }

}

class _KYLChatPage extends State<KYLChatPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('微信'),
      ),
      body: Center(
        child: Text('微信页面'),
      ),
    );
  }

}