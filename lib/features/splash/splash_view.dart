import 'package:ai_app/core/constants/app_routes_constant.dart';
import 'package:ai_app/core/init/routes/app_router.dart';
import 'package:ai_app/features/auth/login/login_view.dart';
import 'package:animate_do/animate_do.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constant.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAuth(const Duration(seconds: 3));
    });
  }

  Future<void> controlAuth(Duration duration) async {
    await Future.delayed(duration).then((value) {
      context.router.replaceNamed(AppRoutesConstant.routeAuthLogin);
    });
  }

  @override
  Widget build(BuildContext context) {
    const durationTime = Duration(milliseconds: 2500);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinPerfect(
                  spins: 3,
                  duration: durationTime,
                  child: Image.asset(ImageConstants.appLogo, scale: 2)),
              FadeIn(
                duration: durationTime,
                child: RichText(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
