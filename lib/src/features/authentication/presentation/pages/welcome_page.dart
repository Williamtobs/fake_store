import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/welcome.png',
            width: AppSpacing.screenWidth(context),
            height: AppSpacing.screenHeight(context),
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 58.width,
                  height: 58.height,
                ),
                AppSpacing.setVerticalSpace(17),
                Text(
                  'Fake Store',
                  style: GoogleFonts.urbanist(
                    fontSize: 28.fontSize,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF252425),
                  ),
                ),
                AppSpacing.setVerticalSpace(40),
                Container(
                  width: AppSpacing.screenWidth(context),
                  padding: EdgeInsets.symmetric(horizontal: 18.width),
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () {
                      context.router.pushNamed('/login');
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
