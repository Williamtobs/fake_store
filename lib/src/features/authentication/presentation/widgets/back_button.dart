import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class LoginBackButton extends StatelessWidget {
  const LoginBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Image.asset(
        'assets/images/back.png',
        width: 41.width,
        height: 41.height,
      ),
    );
  }
}
