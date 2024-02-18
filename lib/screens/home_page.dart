import 'package:flutter/material.dart';
import 'package:safewalk/screens/profile/profile_page.dart';
import 'package:safewalk/screens/set_alert_page.dart';

import 'get_alert_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  SetAlertPage(),
                  GetAlertPage(),
                  ProfilePage(),
                ],
              ),
            ),
            _buildBottomBar(),
          ],
        ),
      ),
    );
  }

  Container _buildBottomBar() {
    return Container(
      height: 50,
      child: Row(
        children: [
          _buildIcon(Icons.home,0),
          _buildIcon(Icons.timer_sharp,1),
          _buildIcon(Icons.person,2),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int pageIndex) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,

        onTap: () {
          _pageController.jumpToPage(pageIndex);
          _currentIndex = _pageController.page!.round();
          setState(() {});
        },
        child: Center(child: Icon(icon , color: _currentIndex == pageIndex? Colors.orangeAccent : Colors.white70,),),
      ),
    );
  }
}
