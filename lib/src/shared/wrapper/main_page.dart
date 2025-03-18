import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/shared/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        WishListRoute(),
        CartRoute(),
      ],
      animationCurve: Curves.easeInCubic,
      bottomNavigationBuilder: (_, tabRouter) {
        return CustomNavBar(
          tabsRouter: tabRouter,
        );
      },
    );
  }
}
