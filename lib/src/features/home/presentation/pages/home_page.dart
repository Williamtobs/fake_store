import 'package:auto_route/auto_route.dart';
import 'package:fake_store/src/core/constants/app_spacing.dart';
import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:fake_store/src/features/home/presentation/widgets/product_tile.dart';
import 'package:fake_store/src/features/home/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              padding: EdgeInsets.symmetric(horizontal: 24.width),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const ProductTile(
                  imageUrl: 'assets/images/product.png',
                  title: 'Product Title',
                  description: 'Product Description',
                  price: '100',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
