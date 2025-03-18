import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/features/authentication/presentation/pages/login_page.dart';
import 'package:fake_store/src/features/authentication/presentation/pages/welcome_page.dart';
import 'package:fake_store/src/features/cart/presentation/pages/cart_page.dart';
import 'package:fake_store/src/features/home/presentation/pages/home_page.dart';
import 'package:fake_store/src/features/home/presentation/pages/product_details_page.dart';
import 'package:fake_store/src/shared/wrapper/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true, path: '/'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(
          page: MainRoute.page,
          path: '/main',
          children: [
            AutoRoute(page: HomeRoute.page, initial: true, path: 'home'),
            AutoRoute(page: CartRoute.page, path: 'cart'),
          ],
        ),
        AutoRoute(page: ProductDetailsRoute.page, path: '/product-details'),
      ];
}
