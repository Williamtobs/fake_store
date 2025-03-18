import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    this.isFavourite = true,
    required this.addToFavourite,
  });

  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final bool isFavourite;
  final VoidCallback addToFavourite;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 21.width,
        right: 16.width,
        top: 12.height,
        bottom: 12.height,
      ),
      margin: EdgeInsets.only(
        bottom: 8.height,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.radius),
        color: const Color.fromRGBO(0, 0, 0, 0.05),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                imageUrl,
                width: 70.width,
                height: 70.height,
              ),
              AppSpacing.setHorizontalSpace(20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.urbanist(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    AppSpacing.setVerticalSpace(4),
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.urbanist(
                        fontSize: 12.fontSize,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ),
                    AppSpacing.setVerticalSpace(12),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.star,
                    //       color: Colors.black,
                    //       size: 10.radius,
                    //     ),
                    //     AppSpacing.setHorizontalSpace(4.21),
                    //     Text(
                    //       '4.25',
                    //       style: GoogleFonts.urbanist(
                    //         fontSize: 12.fontSize,
                    //         fontWeight: FontWeight.w600,
                    //         color: const Color.fromRGBO(48, 53, 57, 1),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // AppSpacing.setVerticalSpace(12),
                    Text(
                      '\$$price',
                      style: GoogleFonts.urbanist(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: addToFavourite,
            child: Icon(
              isFavourite ? Icons.favorite : Icons.favorite_border,
              color: isFavourite
                  ? const Color.fromRGBO(235, 67, 53, 1)
                  : const Color.fromRGBO(203, 203, 212, 1),
              size: 18.radius,
            ),
          ),
        ],
      ),
    );
  }
}
