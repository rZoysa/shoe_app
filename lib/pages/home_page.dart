import 'package:flutter/material.dart';
import 'package:shoe_app/pages/cart_page.dart';
import 'package:shoe_app/widgets/custom_nav_bar.dart';
import 'package:shoe_app/pages/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  int _selectedIndex = 0;

  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: IndexedStack(
              index: _selectedIndex,
              children: pages,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              height: 55,
              animationDuration: const Duration(milliseconds: 400),
              color: const Color.fromARGB(255, 165, 165, 165),
              buttonBackgroundColor: const Color(0xFFD1A55C),
              animationCurve: Curves.ease,
              backgroundColor: Colors.transparent,
              items: const <Widget>[
                Icon(Icons.home, size: 30, color: Colors.black),
                Icon(Icons.shopping_cart, size: 30, color: Colors.black),
                // Icon(Icons.compare_arrows, size: 30, color: Colors.black),
                // Icon(Icons.settings, size: 30, color: Colors.black),
              ],
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
