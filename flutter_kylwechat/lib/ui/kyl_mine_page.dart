import 'package:flutter/material.dart';

class KYLMinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KYLMinePage();
  }

}

class _KYLMinePage extends State<KYLMinePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Center(
        child: Text('我的页面'),
      ),
    );
  }
}