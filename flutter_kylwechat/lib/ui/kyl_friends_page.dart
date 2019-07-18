import 'package:flutter/material.dart';

class KYLFriendsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KYLFriendsPage();
  }

}

class _KYLFriendsPage extends State<KYLFriendsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
      ),
      body: Center(
        child: Text('通讯录页面'),
      ),
    );
  }

}