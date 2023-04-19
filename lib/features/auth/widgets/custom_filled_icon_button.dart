import 'package:ai_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';

class CustomFilledIconButton extends StatelessWidget {
  final Color? backColor;
  final String labelText;
  final String iconName;
  const CustomFilledIconButton({
    super.key,
    this.backColor,
    required this.labelText,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.width,
        height: context.height * .05,
        child: FilledButton.icon(
            icon: Image.asset(iconName, width: 24),
            style: FilledButton.styleFrom(
                alignment: Alignment.centerLeft,
                backgroundColor: backColor ?? ColorConstants.myMediumGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            onPressed: () {},
            label: Text(labelText, style: context.labelLarge)));
  }
}
