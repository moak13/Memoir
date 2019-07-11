import 'package:flutter/material.dart';
import 'package:memoir/pages/add_traveler.dart';
import 'package:memoir/pages/harvest.dart';
import 'package:memoir/pages/home.dart';
import 'package:memoir/pages/inbox.dart';
import 'package:memoir/pages/profile.dart';
import 'package:memoir/utils/custon_bottom_bar.dart';

class WrapperView extends StatefulWidget {
  @override
  _WrapperViewState createState() => _WrapperViewState();
}

class _WrapperViewState extends State<WrapperView> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeView(),
    HarvestView(),
    InviteView(),
    InboxView(),
    ProfileView()
  ];

  Widget currentScreen = HomeView();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageStorage(
        child: currentScreen,
        bucket: bucket,
      )),
      bottomNavigationBar: BottomNav(
        index: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
            currentScreen = screens[i];
          });
        },
        items: [
          BottomNavItem(Icons.home),
          BottomNavItem(Icons.album),
          BottomNavItem(Icons.add_circle_outline),
          BottomNavItem(Icons.notifications),
          BottomNavItem(Icons.person_outline)
        ],
        elevation: 10,
        iconStyle: IconStyle(onSelectSize: 35),
      ),
    );
  }
}
