import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:fake_store/src/features/home/presentation/bloc/products_bloc.dart';
import 'package:fake_store/src/features/wishlist/presentation/widgets/wish_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class WishListPage extends HookWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlist = context.watch<ProductsBloc>().state.wishListItems;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppSpacing.setVerticalSpace(40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.width),
            child: Row(
              children: [
                Text(
                  'Wishlist',
                  style: GoogleFonts.urbanist(
                    fontSize: 24.fontSize,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF252425),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    context.read<AuthenticationBloc>().add(
                          const AuthenticationEvent.logout(),
                        );
                    context.router.replaceAll([
                      const LoginRoute(),
                    ]);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/logout.png',
                        width: 32.width,
                        height: 32.height,
                      ),
                      Text(
                        'Logout',
                        style: GoogleFonts.lato(
                          fontSize: 12.fontSize,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3A3A3A),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          AppSpacing.setVerticalSpace(30),
          if (wishlist.isEmpty)
            const Center(
              child: Text('No products in wishlist'),
            )
          else
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
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: wishlist.length,
                  padding: EdgeInsets.symmetric(horizontal: 24.width),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = wishlist[index];
                    return WishTile(
                      imageUrl: product.image,
                      title: product.title,
                      price: product.price,
                      removeFromWishList: () {
                        context.read<ProductsBloc>().add(
                              ProductsEvent.removeFromWishList(product),
                            );
                      },
                      addToCart: () {
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
                );
              },
            ),
        ],
      ),
    );
  }
}
