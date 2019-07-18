import 'package:flutter/material.dart';

import 'package:flutter_kylwechat/ui/kyl_chat_page.dart';
import 'package:flutter_kylwechat/ui/kyl_discover_page.dart';
import 'package:flutter_kylwechat/ui/kyl_friends_page.dart';
import 'package:flutter_kylwechat/ui/kyl_mine_page.dart';

class KYLRootPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RootPageState();
  }

}

class _RootPageState extends State<KYLRootPage> {
  int _currentIndex = 0;

  List<Widget> pages = [KYLChatPage(),KYLFriendsPage(),KYLDiscoverPage(),KYLMinePage()];


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
            selectedFontSize: 12.0,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.green,
            currentIndex: _currentIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon:Image(height: 20,width: 20,image: AssetImage('images/tabbar_chat.png')),
                activeIcon: Image(height: 20,width: 20,image: AssetImage('images/tabbar_chat_hl.png')),
                title: Text('微信'),
              ),
              BottomNavigationBarItem(
                icon:Image(height: 20,width: 20,image: AssetImage('images/tabbar_friends.png')),
                activeIcon: Image(height: 20,width: 20,image: AssetImage('images/tabbar_friends_hl.png')),
                title: Text('通讯录'),
              ),
              BottomNavigationBarItem(
                icon:Image(height: 20,width: 20,image: AssetImage('images/tabbar_discover.png')),
                activeIcon: Image(height: 20,width: 20,image: AssetImage('images/tabbar_discover_hl.png')),
                title: Text('发现'),
              ),
              BottomNavigationBarItem(
                icon:Image(height: 20,width: 20,image: AssetImage('images/tabbar_mine.png')),
                activeIcon: Image(height: 20,width: 20,image: AssetImage('images/tabbar_mine_hl.png')),
                title: Text('我'),
              ),
            ]),
        body: pages[_currentIndex],
      ),
    );
  }
}