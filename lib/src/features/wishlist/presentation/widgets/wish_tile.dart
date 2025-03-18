import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishTile extends StatelessWidget {
  const WishTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.addToCart,
  });

  final String imageUrl;
  final String title;
  final double price;
  final VoidCallback addToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        bottom: 8.height,
      ),
      padding: EdgeInsets.only(
        left: 21.width,
        top: 12.height,
        bottom: 12.height,
        right: 16.width,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 0, 0, 0.05),
        borderRadius: BorderRadius.circular(10.radius),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 70.width,
            height: 70.height,
          ),
          AppSpacing.setHorizontalSpace(21),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.urbanist(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.favorite,
                      color: const Color.fromRGBO(235, 67, 53, 1),
                      size: 17.height,
                    )
                  ],
                ),
                AppSpacing.setVerticalSpace(8),
                Text(
                  '\$$price',
                  style: GoogleFonts.urbanist(
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 0.75),
                  ),
                ),
                AppSpacing.setVerticalSpace(8),
                GestureDetector(
                  onTap: addToCart,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 36.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.radius),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.urbanist(
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
