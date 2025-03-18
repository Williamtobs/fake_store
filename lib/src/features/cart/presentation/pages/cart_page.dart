import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:fake_store/src/features/cart/presentation/widgets/cart_tile.dart';
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
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.25,
                      children: [
                        SlidableAction(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.width,
                          ),
                          onPressed: (val) {},
                          backgroundColor: const Color.fromRGBO(204, 71, 78, 1),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline,
                        ),
                      ],
                    ),
                    child: CartTile(
                      imgUrl: 'assets/images/product.png',
                      title: '“Awaken, My Love!”',
                      price: 100,
                      quantity: 1,
                      descreaseQuantity: () {},
                      increaseQuantity: () {},
                    ),
                  );
                }),
          ),
          AddToCartButton(
            price: 79.99,
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
