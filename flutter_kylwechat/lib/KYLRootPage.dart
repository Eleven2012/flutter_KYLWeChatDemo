import 'package:flutter/material.dart';

class KYLRootPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RootPageState();
  }

}

class _RootPageState extends State<KYLRootPage> {
  int _currentIndex = 0;

  List<Widget> pages = [Scaffold(
    appBar: AppBar(
      title: Text('微信'),
    ),
    body: Center(
      child: Text('微信主页'),
    ),
  ),
    Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
      ),
      body: Center(
        child: Text('通讯录列表'),
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: Text('发现'),
      ),
      body: Center(
        child: Text('发现列表'),
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: Text('我'),
      ),
      body: Center(
        child: Text('我的页面'),
      ),
    )
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              _currentIndex = index;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.green,
            currentIndex: _currentIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text('微信'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                title: Text('通讯录'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text('发现'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('我'),
              ),
            ]),
        body: pages[_currentIndex],
      ),
    );
  }
}