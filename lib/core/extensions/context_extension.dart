import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  /// custom [Size]
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  /// custom [Padding]
  Widget get smallAllPadding => const Padding(padding: EdgeInsets.all(8));
  Widget get smallHorizontalPadding =>
      const Padding(padding: EdgeInsets.symmetric(horizontal: 8));
  Widget get smallVerticalPadding =>
      const Padding(padding: EdgeInsets.symmetric(vertical: 8));

  Widget get midAllPadding => const Padding(padding: EdgeInsets.all(12));
  Widget get midHorizontalPadding =>
      const Padding(padding: EdgeInsets.symmetric(horizontal: 12));
  Widget get midVerticalPadding =>
      const Padding(padding: EdgeInsets.symmetric(vertical: 12));

  Widget get highAllPadding => const Padding(padding: EdgeInsets.all(16));
  Widget get highHorizontalPadding =>
      const Padding(padding: EdgeInsets.symmetric(horizontal: 16));
  Widget get highVerticalPadding =>
      const Padding(padding: EdgeInsets.symmetric(vertical: 16));

  /// custom [TextStyle]
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
}
