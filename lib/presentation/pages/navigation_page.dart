import 'package:flutter/material.dart';
import 'package:flutter_lib_samples2/presentation/pages/home_page.dart';
import 'package:flutter_lib_samples2/presentation/pages/list_tile_page.dart';
import 'package:flutter_lib_samples2/presentation/pages/profile_page.dart';
import 'package:flutter_lib_samples2/presentation/pages/setting_page.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final List<BottomNavigationBarItem> botNav = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List Tile'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  final List<Widget> screens = [
    HomePage(),
    ListTilePage(),
    ProfilePage(),
    SettingPage(),
  ];

  var screenIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(child: screens[screenIndex.value]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: screenIndex.value,
          items: botNav,
          onTap: (value) {
            screenIndex.value = value;
          },
        ),
      ),
    );
  }
}
