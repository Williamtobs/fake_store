import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.height,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 16.height, top: 16.height),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...[
            (
              icon: tabsRouter.activeIndex == 0
                  ? 'assets/icons/home_filled.png'
                  : 'assets/icons/home.png',
              index: 0,
            ),
            (
              icon: tabsRouter.activeIndex == 1
                  ? 'assets/icons/wishlist_filled.png'
                  : 'assets/icons/wishlist.png',
              index: 1,
            ),
            (
              icon: tabsRouter.activeIndex == 2
                  ? 'assets/icons/cart_filled.png'
                  : 'assets/icons/cart.png',
              index: 2,
            ),
          ].map((tab) {
            return GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(tab.index);
              },
              child: Image.asset(
                tab.icon,
                width: 24.width,
                height: 24.height,
              ),
            );
          })
        ],
      ),
    );
  }
}
