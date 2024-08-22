import 'package:flutter/material.dart';
// import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_map/tab/home/home_page.dart';
import 'package:flutter_map/tab/map/map_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  // index를 넣어줄 변수 셋팅
  int _currentIndex = 0;

  // 값이 변하지 않을거라서 final로 만들어 줌
  // 각 탭에서 나올 화면들을 넣어줌
  final _pages = const [
    HomePage(),
    MapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 각 탭의 화면을보여준다
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        // tab 누를면 해당 tab이 선택되도록
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}
