import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.onPressed,
    this.isLoading = false,
  });

  final Color? color;
  final String text;
  final Color? textColor;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: AppSpacing.screenWidth(context),
        height: 48.height,
        decoration: BoxDecoration(
          color: color ?? const Color(0xFF1F2223),
          borderRadius: BorderRadius.circular(6.radius),
        ),
        child: Center(
          child: !isLoading
              ? Text(
                  text,
                  style: GoogleFonts.inter(
                    color: textColor ?? const Color(0xFFFFFFFF),
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
        ),
      ),
    );
  }
}
