import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/di/locator.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:fake_store/src/features/home/presentation/bloc/products_bloc.dart';
import 'package:fake_store/src/services/user_storage_service.dart';
import 'package:fake_store/src/shared/widgets/dismiss_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthenticationBloc(
                locator(),
                locator(),
              ),
            ),
            BlocProvider(
              create: (context) => ProductsBloc(
                locator(),
              ),
            ),
            BlocProvider(
              create: (context) => CartBloc(
                locator(),
                locator(),
                locator(),
                locator(),
              ),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: appRouter.config(deepLinkBuilder: (deepLink) {
              debugPrint('DeepLink: $deepLink');
              final userStorageService = locator<UserStorageService>();

              if (userStorageService.getUser() != null) {
                return const DeepLink.path('/main');
              }
              return deepLink;
            }),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
