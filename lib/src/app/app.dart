import 'package:fake_store/src/core/router/app_router.dart';
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
        builder: (context, _) => MaterialApp.router(
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        ),
        // MultiBlocProvider(
        //   providers: [],
        //   child: MaterialApp.router(
        //     routerDelegate: appRouter.delegate(),
        //     routeInformationParser: appRouter.defaultRouteParser(),
        //     debugShowCheckedModeBanner: false,
        //   ),
        // ),
      ),
    );
  }
}
