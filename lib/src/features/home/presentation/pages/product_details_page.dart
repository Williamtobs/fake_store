import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/shared/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});

  final ProductResponse product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 247, 250, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.width),
            child: Column(
              children: [
                AppSpacing.setVerticalSpace(40),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 20.radius,
                        color: const Color.fromRGBO(58, 58, 58, 1),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        size: 18.radius,
                        color: const Color.fromRGBO(58, 58, 58, 1),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.network(
            product.image,
            width: 267.width,
            height: 204.height,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                AppSpacing.setVerticalSpace(24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.width),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: GoogleFonts.urbanist(
                          fontSize: 24.fontSize,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 0.75),
                        ),
                      ),
                      AppSpacing.setVerticalSpace(8),
                      Text(
                        product.description,
                        style: GoogleFonts.urbanist(
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.setVerticalSpace(24),
                AddToCartButton(
                  price: product.price,
                  buttonText: 'Add to Cart',
                  text: 'Price',
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
