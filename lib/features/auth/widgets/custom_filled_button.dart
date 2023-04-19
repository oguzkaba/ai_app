import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';

class CustomFilledButton extends StatelessWidget {
  final Color? backColor;
  final String text;
  final VoidCallback onPress;
  const CustomFilledButton({
    super.key,
    this.backColor,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.width,
        height: context.height * .05,
        child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: backColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4))),
            onPressed: onPress,
            child: Text(text, style: context.labelLarge)));
  }
}
