import 'package:flutter/material.dart';
import 'package:ui_task/screens/myCartPage/view/product_cart_screen.dart';
import 'package:ui_task/screens/product_main_page.dart';

import '../Constance/common_constance.dart';
import 'empty_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final List<Widget> _buildBody = [
    const ProductHomePage(),
    const EmptyPage(pageTitle: "Search Page"),
    const EmptyPage(pageTitle: 'Favorite Page'),
    const EmptyPage(pageTitle: 'Profile Page')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('Home',
              style: TextStyle(
                  color: CommonConstance.secondaryColor,
                  fontWeight: FontWeight.w800)),
          leading:
              const Icon(Icons.menu, color: CommonConstance.secondaryColor),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductCartPage()));
              },
              child: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("assets/add-cart.png"),
                  color: CommonConstance.secondaryColor),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: _buildBody[index],
        bottomNavigationBar: showBottomBar());
  }

  showBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: CommonConstance.primaryColor,
      unselectedItemColor: CommonConstance.secondaryColor,
      selectedFontSize: 16,
      unselectedFontSize: 15,
      onTap: (value) {
        index = value;
        setState(() {});
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(
            Icons.search_outlined,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Favourite',
          icon: Icon(
            Icons.favorite,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              size: 30,
            )),
      ],
    );
  }
}
