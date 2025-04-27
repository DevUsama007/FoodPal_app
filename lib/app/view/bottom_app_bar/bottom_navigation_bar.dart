import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpal/app/res/app_colors/colors.dart';
import 'package:foodpal/app/view/best_offers.dart';
import 'package:foodpal/app/view/best_sellers.dart';
import 'package:foodpal/app/view/home_screen.dart';
import 'package:foodpal/app/view/myOrderScreen.dart';
import 'package:foodpal/app/view/notification_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Myorderscreen(),
    const NotificationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Track if the back button should exit the app
  DateTime? _lastBackPressTime;

  Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      // If not on the Home screen, go back to Home
      setState(() {
        _selectedIndex = 0;
      });
      return false; // Prevent default back behavior
    }

    // If on Home screen, check for double tap to exit
    final now = DateTime.now();
    if (_lastBackPressTime == null ||
        now.difference(_lastBackPressTime!) > Duration(seconds: 2)) {
      _lastBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Press back again to exit'),
          duration: Duration(seconds: 2),
        ),
      );
      return false;
    }
    SystemNavigator.pop();
    return true; // Allow exit
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Notifi',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: AppColor.grey,
          selectedItemColor: AppColor.black,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
