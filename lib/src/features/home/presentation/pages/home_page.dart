import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/core/router/app_router.dart';
import 'package:fake_store/src/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:fake_store/src/features/home/presentation/bloc/products_bloc.dart';
import 'package:fake_store/src/features/home/presentation/widgets/product_tile.dart';
import 'package:fake_store/src/features/home/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<CartBloc>().add(const CartEvent.started(true));
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacing.setVerticalSpace(40),
          const TopBar(),
          AppSpacing.setVerticalSpace(32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.width),
            child: Text(
              'Fake Store',
              style: GoogleFonts.urbanist(
                fontSize: 28.fontSize,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF252425),
              ),
            ),
          ),
          AppSpacing.setVerticalSpace(22),
          BlocBuilder<ProductsBloc, ProductsState>(
            bloc: context.read<ProductsBloc>()
              ..add(const ProductsEvent.started()),
            builder: (context, state) {
              if (state.viewState.isProcessing) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.viewState.isError) {
                return Center(
                  child: Text(state.errorMessage),
                );
              }
              if (state.viewState.isSuccess && state.products.isEmpty) {
                return const Center(
                  child: Text('No products found'),
                );
              }
              return Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.products.length,
                  padding: EdgeInsets.symmetric(horizontal: 24.width),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          ProductDetailsRoute(product: product),
                        );
                      },
                      child: ProductTile(
                        imageUrl: product.image,
                        title: product.title,
                        description: product.description,
                        price: product.price.toString(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
