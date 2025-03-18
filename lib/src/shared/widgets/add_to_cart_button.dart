import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.price,
    required this.onTap,
    this.color = const Color.fromRGBO(255, 232, 178, 1),
    required this.buttonText,
    required this.text,
  });

  final double price;
  final VoidCallback onTap;
  final Color color;
  final String buttonText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(24.radius),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: 12.fontSize,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              AppSpacing.setVerticalSpace(6),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: GoogleFonts.lora(
                  fontSize: 20.fontSize,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(58, 58, 58, 1),
                ),
              ),
            ],
          ),
          AppSpacing.setHorizontalSpace(24),
          Expanded(
            child: CustomButton(
              text: buttonText,
              onPressed: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
