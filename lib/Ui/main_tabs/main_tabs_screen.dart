import 'package:best/Ui/alters_screen/alters.dart';
import 'package:best/Ui/chats_screen/chats.dart';
import 'package:best/Ui/explore_screen/explore.dart';
import 'package:best/Ui/offers_screen/offers.dart';
import 'package:best/Ui/profile_screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainTabsScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainTabsScreen> {
  List<Widget> _buildScreens() {
    return [
      ExploreScreen(),
      OffersScreen(),
      AltersScreen(),
      ChatsScreen(),
      ProfileScreen(),
    ];
  }

  bool select = false;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/image/search.png')),
        title: 'Explore',
        activeColor: Color(0xff222B45),
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/image/offers.png')),
        title: 'Offers',
        activeColor: Color(0xff222B45),
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/image/alters.png')),
        title: 'Alters',
        activeColor: Color(0xff222B45),
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/image/chats.png')),
        title: 'Chats',
        activeColor: Color(0xff222B45),
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/image/profile.png')),
        title: 'Profile',
        activeColor: Color(0xff222B45),
        inactiveColor: Colors.grey,
      ),
    ];
  }

  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      navBarHeight: 90,
      iconSize: 25,
      margin: EdgeInsets.only(top: 32),
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      hideNavigationBar: _hideNavBar,
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property
    );
  }
}
