import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/features/authentication/presentation/pages/login_page.dart';
import 'package:fake_store/src/features/authentication/presentation/pages/welcome_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page, path: '/login'),
      ];
}
