import 'package:ai_app/core/constants/app_routes_constant.dart';
import 'package:ai_app/core/extensions/context_extension.dart';
import 'package:ai_app/core/init/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/image_constant.dart';
import '../widgets/custom_filled_button.dart';
import '../widgets/custom_filled_icon_button.dart';
import '../widgets/custom_textfield.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    late TapGestureRecognizer tapRecognizer;
    tapRecognizer = TapGestureRecognizer()
      ..onTap = () => context.router.pushNamed(RegisterRoute.name);

    return Scaffold(
        body: Stack(children: [
      const Positioned(
          top: -100,
          right: -100,
          child: Icon(Icons.circle_outlined,
              color: ColorConstants.myDarkGreen, size: 220)),
      Positioned(
          top: -100,
          right: -100,
          child: Icon(Icons.circle,
              color: ColorConstants.myDarkGreen.withOpacity(.2), size: 300)),
      Positioned(
          top: 20,
          right: -70,
          child: Icon(Icons.circle,
              color: ColorConstants.myDarkGreen.withOpacity(.2), size: 200)),
      Positioned(
        bottom: -context.height / 2,
        left: -context.height / 2,
        child: Icon(Icons.circle,
            color: ColorConstants.myDarkGreen.withOpacity(.1),
            size: context.height),
      ),
      _stackFrontView(context, tapRecognizer),
    ]));
  }

  Center _stackFrontView(
          BuildContext context, TapGestureRecognizer tapRecognizer) =>
      Center(
          child: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            _logo(),
            context.highVerticalPadding,
            _welcomeText(),
            context.smallVerticalPadding,
            const CustomTextField(),
            context.smallVerticalPadding,
            CustomFilledButton(
                text: 'Continue',
                // todo: login function
                onPress: () => context.router
                    .replaceNamed(AppRoutesConstant.routeDashboard)),
            context.smallVerticalPadding,
            _changeSignInUp(context, tapRecognizer),
            context.smallVerticalPadding,
            _orDivider(context),
            context.smallVerticalPadding,
            const CustomFilledIconButton(
                labelText: 'Continue with Microsoft',
                iconName: ImageConstants.microsoftLogo),
            context.smallVerticalPadding,
            const CustomFilledIconButton(
                labelText: 'Continue with Google',
                iconName: ImageConstants.googleLogo),
          ]),
        ),
      ));

  Row _orDivider(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: context.width * .4,
              child: const Divider(
                  color: ColorConstants.myMediumGrey, endIndent: 25)),
          const Text('OR',
              style: TextStyle(color: ColorConstants.myMediumGrey)),
          SizedBox(
              width: context.width * .4,
              child: const Divider(
                  color: ColorConstants.myMediumGrey, indent: 25)),
        ],
      );

  Text _welcomeText() =>
      const Text('Welcome Back', style: TextStyle(fontSize: 22));

  RichText _changeSignInUp(
          BuildContext context, TapGestureRecognizer tapRecognizer) =>
      RichText(
          text: TextSpan(
              text: "Don't Have An Account? ",
              style: context.bodyMedium,
              children: [
            TextSpan(
                text: 'Sign Up',
                recognizer: tapRecognizer,
                style: context.bodyMedium
                    ?.copyWith(color: ColorConstants.myDarkGreen)),
          ]));

  Column _logo() => Column(
        children: [
          Image.asset(ImageConstants.appLogo, scale: 2),
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
