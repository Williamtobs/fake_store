import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/core/utils/validators.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/features/authentication/presentation/widgets/back_button.dart';
import 'package:fake_store/src/shared/widgets/custom_button.dart';
import 'package:fake_store/src/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obsecureText = useState(true);
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.width),
        child: Form(
          key: formKey,
          child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            buildWhen: (previous, current) {
              if (previous.viewState.isProcessing &&
                  current.viewState.isError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(current.errorMessage),
                  ),
                );
              } else if (previous.viewState.isProcessing &&
                  current.viewState.isSuccess) {
                context.router.replaceAll(
                  [
                    const MainRoute(),
                  ],
                );
              }
              return true;
            },
            builder: (context, state) {
              return Column(
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
                    controller: usernameController,
                    hintText: 'Enter your username',
                    validator: context.validateFieldNotEmpty,
                    textCapitalization: TextCapitalization.none,
                  ),
                  AppSpacing.setVerticalSpace(15),
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    obscureText: obsecureText.value,
                    validator: context.validateFieldNotEmpty,
                    textCapitalization: TextCapitalization.none,
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
                    isLoading: state.viewState.isProcessing,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthenticationBloc>().add(
                              AuthenticationEvent.login(
                                  userInfo: UserInfo(
                                userName: usernameController.text,
                                password: passwordController.text,
                              )),
                            );
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
