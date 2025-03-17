import 'package:fake_store/src/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class AppSpacing {
  const AppSpacing._();

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static SizedBox setVerticalSpace(num h) => SizedBox(height: h.height);

  static SizedBox setHorizontalSpace(num w) => SizedBox(width: w.width);
}
