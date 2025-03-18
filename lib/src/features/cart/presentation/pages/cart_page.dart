import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/helpers/helpers_function.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:fake_store/src/features/cart/presentation/widgets/cart_tile.dart';
import 'package:fake_store/src/features/home/presentation/bloc/products_bloc.dart';
import 'package:fake_store/src/shared/widgets/add_to_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductsBloc>().state.products;
    final cart = context.watch<CartBloc>().state.cart?.products;

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
                  'Cart',
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
          AppSpacing.setVerticalSpace(39),
          BlocBuilder<CartBloc, CartState>(
            buildWhen: (previous, current) {
              if (previous.deleteViewState.isProcessing &&
                  current.deleteViewState.isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cart deleted successfully'),
                  ),
                );
              }
              return true;
            },
            builder: (context, state) {
              if (state.viewState.isSuccess &&
                  state.cart != null &&
                  state.cart!.products.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: Text('No Items in Cart'),
                  ),
                );
              }
              return Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.cart?.products.length,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final carts = state.cart!.products[index];
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.25,
                          children: [
                            SlidableAction(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.width,
                              ),
                              onPressed: (val) {
                                context.read<CartBloc>().add(
                                      CartEvent.deleteCart(
                                        carts.productId,
                                      ),
                                    );
                              },
                              backgroundColor:
                                  const Color.fromRGBO(204, 71, 78, 1),
                              foregroundColor: Colors.white,
                              icon: Icons.delete_outline,
                            ),
                          ],
                        ),
                        child: CartTile(
                          imgUrl: products
                              .firstWhere(
                                  (element) => element.id == carts.productId)
                              .image,
                          title: products
                              .firstWhere(
                                  (element) => element.id == carts.productId)
                              .title,
                          price: products
                              .firstWhere(
                                  (element) => element.id == carts.productId)
                              .price,
                          quantity: carts.quantity,
                          descreaseQuantity: () {
                            if (carts.quantity != 1) {
                              context.read<CartBloc>().add(
                                    CartEvent.updateCart({
                                      'id': state.cart!.id,
                                      'userId': state.cart!.userId,
                                      'date':
                                          state.cart!.date.toIso8601String(),
                                      'products': [
                                        {
                                          'productId': carts.productId,
                                          'quantity': carts.quantity - 1,
                                        }
                                      ],
                                      '__v': state.cart!.v,
                                    }),
                                  );
                            }
                          },
                          increaseQuantity: () {
                            debugPrint('increase ${state.cart!.v}');
                            context.read<CartBloc>().add(
                                  CartEvent.updateCart({
                                    'id': state.cart!.id,
                                    'userId': state.cart!.userId,
                                    'date': state.cart!.date.toIso8601String(),
                                    'products': [
                                      {
                                        'productId': carts.productId,
                                        'quantity': carts.quantity + 1,
                                      }
                                    ],
                                    '__v': state.cart!.v,
                                  }
                                      // CartsResponse(
                                      //   id: state.cart!.id,
                                      //   userId: state.cart!.userId,
                                      //   date: state.cart!.date,
                                      //   products: [
                                      //     CartProduct(
                                      //       productId: carts.productId,
                                      //       quantity: carts.quantity + 1,
                                      //     )
                                      //   ],
                                      //   v: state.cart!.v,
                                      // ),
                                      ),
                                );
                          },
                        ),
                      );
                    }),
              );
            },
          ),
          // const Spacer(),
          AddToCartButton(
            price: cart == null || cart.isEmpty
                ? 0
                : cartTotalPrice(products, cart),
            text: 'Cart Total',
            buttonText: 'Checkout',
            color: Colors.white,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
