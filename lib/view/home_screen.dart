import 'package:flutter/material.dart';
import 'package:sneakers_shop/view/cart_screen.dart';
import 'package:sneakers_shop/view/shop_v/shop_screen.dart';
import 'package:sneakers_shop/view/widgets/bottom_nav_bar.dart';
import 'package:sneakers_shop/view/widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index when user tap
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Page change
  final List<Widget> _pages = [
    const ShopScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ),
        ),
      ),
      drawer: myDrawer(),
      body: _pages[_selectedIndex],
    );
  }
}
