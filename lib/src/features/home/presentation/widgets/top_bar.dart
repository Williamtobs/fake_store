import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/di/locator.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/services/user_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfile = locator<UserStorageService>().getUser();

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 24.width),
      child: Row(
        children: [
          Text(
            'Welcome,\n${userProfile?.username ?? ''}',
            style: GoogleFonts.urbanist(
              fontSize: 24.fontSize,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF252425),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.read<AuthenticationBloc>().add(
                    const AuthenticationEvent.logout(),
                  );
              context.router.replaceAll([
                const LoginRoute(),
              ]);
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/logout.png',
                  width: 32.width,
                  height: 32.height,
                ),
                Text(
                  'Logout',
                  style: GoogleFonts.lato(
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF3A3A3A),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
