import 'package:flutter/material.dart';
import 'package:shopper/constants.dart';
import 'package:shopper/screens/OrdersScreen.dart';
import 'package:shopper/screens/accountScreen.dart';
import 'package:shopper/screens/helpScreen.dart';
import 'package:shopper/screens/products_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': ProductScreen(),
        'title': 'Home',
      },
      {
        'page': OrdersScreen(),
        'title': 'Orders',
      },
      {
        'page': AccountScreen(),
        'title': 'Account',
      },
      {
        'page': HelpScreen(),
        'title': 'Help',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (_pages[_selectedPageIndex]['page'] as Widget),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: veyronColorWhite,
        unselectedItemColor: Color(0xFF282828),
        selectedItemColor: veyronTheme,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.home),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.list),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.account_balance_outlined),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
