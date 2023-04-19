import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/image_constant.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        _logo(),
        const SizedBox(height: 40),
        const Text(
          'Welcome Back',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Email Adress',
                  enabledBorder: OutlineInputBorder(
                      gapPadding: 10,
                      borderSide: BorderSide(color: ColorConstants.myWhite)))),
        ),
        const SizedBox(height: 12),
      ]),
    ));
  }

  Column _logo() {
    return Column(
      children: [
        Image.asset(ImageConstants.appLogo),
        RichText(
            text: const TextSpan(
                text: 'Open ',
                style: TextStyle(
                    color: ColorConstants.myWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: 'AI',
                  style: TextStyle(
                      color: ColorConstants.myDarkGreen,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))
            ])),
      ],
    );
  }
}
