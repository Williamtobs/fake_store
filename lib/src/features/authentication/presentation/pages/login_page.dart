import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/features/authentication/presentation/widgets/back_button.dart';
import 'package:fake_store/src/shared/widgets/custom_button.dart';
import 'package:fake_store/src/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LoginPage extends StatefulHookWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obsecureText = useState(true);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.setVerticalSpace(40),
            const LoginBackButton(),
            AppSpacing.setVerticalSpace(28),
            Text(
              'Welcome back! Glad \nto see you, Again!',
              style: GoogleFonts.urbanist(
                fontSize: 30.fontSize,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1E232C),
              ),
            ),
            AppSpacing.setVerticalSpace(32),
            CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
            AppSpacing.setVerticalSpace(15),
            CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
              obscureText: obsecureText.value,
              suffixIcon: UnconstrainedBox(
                child: GestureDetector(
                  onTap: () {
                    obsecureText.value = !obsecureText.value;
                  },
                  child: Image.asset(
                    'assets/images/eye.png',
                    width: 22.width,
                    height: 22.height,
                  ),
                ),
              ),
            ),
            AppSpacing.setVerticalSpace(30),
            CustomButton(
              text: 'Login',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
