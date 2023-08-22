import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/pages/skeleton_contents/cart.dart';
import 'package:abaty_express/pages/skeleton_contents/distributor.dart';
import 'package:abaty_express/pages/skeleton_contents/wholesale.dart';
import 'package:flutter/material.dart';

import 'skeleton_contents/categories.dart';
import 'skeleton_contents/home.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key, required this.title});

  final String title;

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int index = 0;

  final screens = const [
    Home(),
    Categories(),
    Cart(),
    WholeSale(),
    Distributor()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color.fromARGB(43, 36, 75, 0),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: generalTextColor))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          child: NavigationBar(
            height: 60,
            backgroundColor: bottomNavBarColor,
            selectedIndex: index,
            onDestinationSelected: (value) => setState(() {
              index = value;
            }),
            destinations: [
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.home,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.home_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.grid_view_rounded,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.grid_view,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Categories'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.shopping_cart,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Cart'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.shopify,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.shopify_outlined,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Wholesale'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.local_taxi,
                    color: bottomNavBarIconsColor,
                  ),
                  icon: Icon(
                    Icons.local_taxi_rounded,
                    color: bottomNavBarIconsColor,
                  ),
                  label: 'Distributor'),
            ],
          ),
        ),
      ),
    );
  }
}
