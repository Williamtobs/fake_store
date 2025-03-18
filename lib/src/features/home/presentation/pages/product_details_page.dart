import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/features/home/presentation/bloc/products_bloc.dart';
import 'package:fake_store/src/shared/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});

  final ProductResponse product;

  @override
  Widget build(BuildContext context) {
    final wishlist = context.watch<ProductsBloc>().state.wishListItems;

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
                        wishlist
                                .where((element) => element.id == product.id)
                                .isNotEmpty
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 18.radius,
                        color: const Color.fromRGBO(58, 58, 58, 1),
                      ),
                      onPressed: () {
                        if (wishlist
                            .where((element) => element.id == product.id)
                            .isNotEmpty) {
                          context.read<ProductsBloc>().add(
                                ProductsEvent.removeFromWishList(product),
                              );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Product removed from wishlist'),
                            ),
                          );
                        } else {
                          context.read<ProductsBloc>().add(
                                ProductsEvent.addToWishList(product),
                              );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Product added to wishlist'),
                            ),
                          );
                        }
                      },
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
                BlocBuilder<CartBloc, CartState>(
                  buildWhen: (previous, current) {
                    if (previous.viewState.isProcessing &&
                        current.viewState.isSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Product added to cart successfully'),
                        ),
                      );
                    }
                    return true;
                  },
                  builder: (context, state) {
                    return AddToCartButton(
                      price: product.price,
                      buttonText: 'Add to Cart',
                      text: 'Price',
                      isLoading: state.viewState.isProcessing,
                      onTap: () {
                        context.read<CartBloc>().add(
                              CartEvent.addToCart(
                                {
                                  'id': product.id,
                                  'userId': 1,
                                  'date': DateTime.now().toIso8601String(),
                                  'products': [
                                    {
                                      'productId': product.id,
                                      'quantity': 1,
                                    }
                                  ],
                                },
                              ),
                            );
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
