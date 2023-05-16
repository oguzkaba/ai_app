import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: context.height / 14,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(8),
          hintText: 'Email Address',
        ),
      ),
    );
  }
}
