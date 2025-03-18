import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.quantity,
    required this.descreaseQuantity,
    required this.increaseQuantity,
  });

  final String imgUrl;
  final String title;
  final double price;
  final int quantity;
  final VoidCallback descreaseQuantity;
  final VoidCallback increaseQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.width,
      ),
      margin: EdgeInsets.only(
        bottom: 24.height,
      ),
      child: Row(
        children: [
          Image.asset(
            imgUrl,
            width: 70.width,
            height: 69.height,
          ),
          AppSpacing.setHorizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.urbanist(
                  fontSize: 16.fontSize,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              AppSpacing.setVerticalSpace(12),
              Container(
                width: 134.width,
                height: 36.height,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.width,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.radius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: descreaseQuantity,
                      child: Icon(
                        Icons.remove_circle_outline,
                        size: 20.radius,
                        color: const Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                    ),
                    Container(
                      height: 36.height,
                      width: 1.width,
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    Text(
                      quantity.toString(),
                      style: GoogleFonts.lato(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(37, 36, 37, 1),
                      ),
                    ),
                    Container(
                      height: 36.height,
                      width: 1.width,
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    InkWell(
                      onTap: increaseQuantity,
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 20.radius,
                        color: const Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: GoogleFonts.urbanist(
              fontSize: 14.fontSize,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ],
      ),
    );
  }
}
