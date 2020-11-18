import 'package:flutter/material.dart';

import 'content_page.dart';

/// 底部导航框架搭建
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activColor = Colors.lightBlue;
  int _currentIndex = 0;
  final ContentPagerController _contentPagerController = ContentPagerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffedeef0), Color(0xffe6e7e9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: ContentPager(
            contentPageController: _contentPagerController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _contentPagerController.jumpToPage(index);
          //修改状态
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomItem('本周', Icons.folder, 0),
          _bottomItem('分享', Icons.access_alarm, 1),
          _bottomItem('免费', Icons.fact_check_rounded, 2),
          _bottomItem('长安', Icons.accessibility_new, 3),
        ],
      ),
    );
  }

/*底部导航*/
  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != index ? _defaultColor : _activColor),
        ));
  }
}
